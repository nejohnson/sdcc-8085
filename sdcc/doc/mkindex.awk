# Make the manual's index from mmroff's raw index:  one line per IND
# call, each subentry level a tab-separated field, then the page number.
#
#	awk -f mkindex.awk sdccman.ind | sort | awk -f mkindex.awk -v pass=2 > sdccman.idx
#
# Pass 1 puts a sort key in front of each line:  the term in lower case,
# without leading underscores and punctuation, so that __sfr files under s.
# Pass 2 merges the sorted lines, one entry per term with its pages, and
# writes them as troff text.  A term "x|see{y}" is a cross-reference.

BEGIN { FS = OFS = "\t" }

pass != 2 {
	key = ""
	for (i = 1; i < NF; i++) {
		k = tolower($i)
		sub(/^[^a-z0-9]+/, "", k)
		key = key k "\001" $i "\002"
	}
	# the page, zero-padded so that sort orders it numerically
	printf "%s\t%06d\t", key, $NF
	for (i = 1; i < NF; i++)
		printf "%s\t", $i
	print ""
	next
}

function flush() {
	if (term == "")
		return
	if (pages != "" || see != "")
		line(depth, text (pages != "" ? ", " pages : "") (see != "" ? ", \\fIsee\\fP " see : ""))
	term = ""; pages = ""; see = ""
}

function line(d, s) {
	gsub(/\\-|-/, "\\-", s)
	printf ".in %dn\n.ti -2n\n", 2 + 2 * d
	if (substr(s, 1, 1) == "." || substr(s, 1, 1) == "'")
		s = "\\&" s
	print s
}

pass == 2 {
	page = $2 + 0
	n = NF - 1                     # fields 3 .. n are the levels
	path = ""
	for (i = 3; i <= n; i++) {
		path = path $i "\t"
		if (i < n && !(path in shown)) {
			# a heading for a subentry, with no pages of its own
			flush()
			shown[path] = 1
			line(i - 3, $i)
		}
	}
	if (path != term) {
		flush()
		term = path
		depth = n - 3
		text = $n
		lastpage = -1
		if (match(text, /\|see\{[^}]*\}$/)) {
			see = substr(text, RSTART + 5, RLENGTH - 6)
			text = substr(text, 1, RSTART - 1)
		}
		shown[path] = 1
		# a new initial letter starts a group
		c = tolower(substr($1, 1, 1))
		if (depth == 0 && c != group) {
			if (group != "")
				print ".sp 0.5"
			group = c
		}
	}
	if (see == "" && page != lastpage) {
		pages = pages (pages != "" ? ", " : "") page
		lastpage = page
	}
	next
}

END { if (pass == 2) { flush(); print ".in 0" } }
