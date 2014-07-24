LOCAL_PATH := $(call my-dir)

ifeq ($(strip $(TARGET_BOOTLOADER_BOARD_NAME)),rk31sdk)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
