# File   : AUTO GENERATED MAKE FILE
# Date   : Tue May 14 17:31:34 CST 2013
# Author : hyl
# ===============================================
LOCAL_PATH := $(call my-dir)
ifeq ($(strip $(BOARD_USE_LCDC_COMPOSER)), true)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := hwcomposer.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := gralloc.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := audio.primary.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := audio_policy.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := alsa.default.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := acoustics.default.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libyuvtorgb.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libhwui.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libgui.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libvideoeditorplayer.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libvideoeditor_osal.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libvideoeditor_videofilters.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libvideoeditor_core.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libvideoeditor_jni.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

endif

