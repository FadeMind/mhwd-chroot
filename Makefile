#!/usr/bin/make -f

PREFIX          =   /usr
BIN_PATH        =   $(DESTDIR)$(PREFIX)/bin
APP_PATH   	=   $(DESTDIR)$(PREFIX)/share/applications
DEL             =   rm -rf
MD		=   mkdir -p
INS_BIN         =   install -Dm755
INS_STD         =   install -Dm644
BIN_FILES  	=   mhwd-chroot mhwd-chroot-shell
DESKTOP_FILES	=   mhwd-chroot-gksu.desktop mhwd-chroot-kdesu.desktop

install:
	$(MD) $(BIN_PATH)
	$(MD) $(APP_PATH)
	$(INS_BIN) $(BIN_FILES)     $(BIN_PATH)/
	$(INS_STD) $(DESKTOP_FILES) $(APP_PATH)/

uninstall:
	cd $(BIN_PATH) && $(DEL) $(BIN_FILES)
	cd $(APP_PATH) && $(DEL) $(DESKTOP_FILES)
