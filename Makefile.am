@SET_MAKE@

EXTRA_DIST =								\
	xfwm4-themes.spec

SUBDIRS = themes

distclean-local:
	rm -rf *.cache *~

rpm: dist
	rpmbuild -ta $(PACKAGE)-$(VERSION).tar.gz
	@rm -f $(PACKAGE)-$(VERSION).tar.gz
