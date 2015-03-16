SHOWTIME_SHELL_VERSION = c3b9fc421c5b3043d5c6c42a202776953693b336
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
