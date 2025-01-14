_MAJOR	:= 1
_MINOR	:= 2
_PATCH	:= 1

FILES	:=	base_rules base_tools gamecube_rules wii_rules

PREFIX	?=	$(DEVKITPRO)/devkitPPC

all:
	@echo "use dist or install targets"

install:
	@cp -v $(FILES) $(DESTDIR)$(PREFIX)

dist:
	@tar -cJf devkitppc-rules-$(_MAJOR).$(_MINOR).$(_PATCH).tar.xz $(FILES) Makefile
