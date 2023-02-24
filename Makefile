PREFIX = /usr

all:
	@printf "Run 'make install' to install Health.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p health $(DESTDIR)$(PREFIX)/bin/health
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/health

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/health
