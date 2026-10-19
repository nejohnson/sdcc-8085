clean:
	rm -rf $(MANUAL).html
	rm -f $(MANUAL).txt $(MANUAL).pdf $(MANUAL).qrf $(MANUAL).ind $(MANUAL).idx *~
	rm -rf sdcc-doc sdcc-doc.tar.bz2

# Deleting all files created by configuring or building the program
# -----------------------------------------------------------------
distclean: clean
	rm -f Makefile

# Like clean but some files may still exist
# -----------------------------------------
mostlyclean: clean

# Deleting everything that can reconstructed by this Makefile. It deletes
# everything deleted by distclean plus files created by bison, etc.
# -----------------------------------------------------------------------
realclean: distclean
