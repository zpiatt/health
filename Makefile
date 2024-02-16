PREFIX = /usr
MANDIR = $(PREFIX)/share/man/man1

all:
	@printf "Run 'make install' to install Health.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p health $(DESTDIR)$(PREFIX)/bin/health
	@gzip -c health.1 > $(DESTDIR)$(MANDIR)/health.1.gz
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/health

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/health
	@rm -rf $(DESTDIR)$(MANDIR)/health.1*
