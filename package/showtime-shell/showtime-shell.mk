SHOWTIME_SHELL_VERSION = 21d684f53eda7a34cc01d9d678b0fa673923f4ea
SHOWTIME_SHELL_SITE = git://github.com/andoma/showtime-shell.git
SHOWTIME_SHELL_LICENSE = GPLv3

define SHOWTIME_SHELL_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 755 package/showtime-shell/S60showtime-shell \
		$(TARGET_DIR)/etc/init.d/S60showtime-shell
	$(INSTALL) -D -m 755 package/showtime-shell/S44showtime-shell \
		$(TARGET_DIR)/etc/init.d/S44showtime-shell
endef


define SHOWTIME_SHELL_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/showtime-shell $(TARGET_DIR)/usr/sbin/showtime-shell
endef

define SHOWTIME_SHELL_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) CC="$(TARGET_CC)" -C $(@D)
endef

$(eval $(generic-package))
