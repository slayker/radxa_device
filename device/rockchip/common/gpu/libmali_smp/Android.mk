ifeq ($(strip $(TARGET_BOOTLOADER_BOARD_NAME)),rk31sdk)

ifeq ($(TARGET_BOARD_PLATFORM),rk30xx)

LOCAL_PATH := $(call my-dir)

# Use BUILD_PREBUILT instead of PRODUCT_COPY_FILES to bring in the NOTICE file.
include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libEGL_mali.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/egl
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libGLESv1_CM_mali.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/egl
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libGLESv2_mali.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/egl
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libMali.so
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libUMP.so
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

ifeq ($(strip $(BOARD_USE_LCDC_COMPOSER)),true)
    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := dedicated/mali.ko
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := dedicated/ump.ko
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := dedicated/mali.ko.3.0.36+
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    LOCAL_PREBUILT_LIBS := dedicated/ump.ko.3.0.36+
    LOCAL_MODULE_TAGS := optional
    include $(BUILD_MULTI_PREBUILT)
else
    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := osmem/mali.ko
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := osmem/ump.ko
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := osmem/mali.ko.3.0.36+
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)

    include $(CLEAR_VARS)
    LOCAL_PREBUILT_LIBS := osmem/ump.ko.3.0.36+
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/modules
    include $(BUILD_MULTI_PREBUILT)
endif
endif
endif