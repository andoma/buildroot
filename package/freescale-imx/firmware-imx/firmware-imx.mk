################################################################################
#
# firmware-imx
#
################################################################################

FIRMWARE_IMX_VERSION = $(FREESCALE_IMX_VERSION)
FIRMWARE_IMX_SITE = $(FREESCALE_IMX_SITE)
FIRMWARE_IMX_SOURCE = firmware-imx-$(FIRMWARE_IMX_VERSION).bin

FIRMWARE_IMX_LICENSE = Freescale Semiconductor Software License Agreement, \
	Atheros license (ath6k)
FIRMWARE_IMX_LICENSE_FILES = EULA licenses/vpu/EULA
FIRMWARE_IMX_REDISTRIBUTE = NO

FIRMWARE_IMX_BLOBS = ath6k sdma vpu

define FIRMWARE_IMX_EXTRACT_CMDS
	$(call FREESCALE_IMX_EXTRACT_HELPER,$(DL_DIR)/$(FIRMWARE_IMX_SOURCE))
endef

define FIRMWARE_IMX_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware
	for blobdir in $(FIRMWARE_IMX_BLOBS); do \
		cp -r $(@D)/firmware/$${blobdir} $(TARGET_DIR)/lib/firmware; \
	done
endef

$(eval $(generic-package))
