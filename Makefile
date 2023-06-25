PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@printf "Run 'make install' to install Health.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p health $(DESTDIR)$(PREFIX)/bin/health
	@cp -p health.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/health

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/health
	@rm -rf $(DESTDIR)$(MANDIR)/man1/health.1*
