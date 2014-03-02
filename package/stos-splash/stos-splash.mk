STOS_SPLASH_VERSION = b4db395c59c570b8767407826a1f06e5fe36b446
STOS_SPLASH_SITE = git://github.com/andoma/stos-splash.git
STOS_SPLASH_LICENSE = GPLv3

define STOS_SPLASH_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 755 package/stos-splash/S01stos-splash \
		$(TARGET_DIR)/etc/init.d/S01stos-splash
endef


define STOS_SPLASH_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/stos-splash $(TARGET_DIR)/usr/sbin/stos-splash
	mkdir -p $(TARGET_DIR)/usr/share/fonts/
	cp package/stos-splash/Audiowide-Regular.ttf $(TARGET_DIR)/usr/share/fonts/Audiowide-Regular.ttf
endef

define STOS_SPLASH_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) CC="$(TARGET_CC)" -C $(@D)
endef

$(eval $(generic-package))
