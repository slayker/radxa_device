# Copyright (C) 2011 rockchip Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Everything in this directory will become public


$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


########################################################
# Kernel
########################################################
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

PRODUCT_PACKAGES += Email


###########################################################
## Find all of the apk files under the named directories.
## Meant to be used like:
##    SRC_FILES := $(call all-apk-files-under,src tests)
###########################################################
define all-apk-files-under
$(patsubst ./%,%, \
  $(shell cd $(LOCAL_PATH)/$(1) ; \
          find ./ -maxdepth 1  -name "*.apk" -and -not -name ".*") \
 )
endef

#########################################################
# Copy proprietary apk
#########################################################
#COPY_APK_TARGET := $(call all-apk-files-under,apk)
#PRODUCT_COPY_FILES += $(foreach apkName, $(COPY_APK_TARGET), \
#	$(addprefix $(LOCAL_PATH)/apk/, $(apkName)):$(addprefix system/app/, $(apkName)))

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/apk/Bluetooth.bplus.apk:system/app/Bluetooth.bplus.apk \
	$(LOCAL_PATH)/apk/WifiDisplay.apk:system/app/WifiDisplay.apk

###########################################################
## Find all of the kl files under the named directories.
## Meant to be used like:
##    SRC_FILES := $(call all-kl-files-under,src tests)
###########################################################
define all-kl-files-under
$(patsubst ./%,%, \
  $(shell cd $(LOCAL_PATH); \
          find ./ -maxdepth 1  -name "*.kl")\
 )
endef
#########################################################
#  copy all the .kl file
#########################################################
COPY_KL_TARGET := $(call all-kl-files-under)

PRODUCT_COPY_FILES += $(foreach klName, $(COPY_KL_TARGET), \
	$(addprefix $(LOCAL_PATH)/, $(klName)):$(addprefix system/usr/keylayout/, $(klName)))
PRODUCT_COPY_FILES += \
    device/rockchip/rk31sdk/init.rc:root/init.rc \
    device/rockchip/rk31sdk/init.$(TARGET_BOARD_HARDWARE).rc:root/init.$(TARGET_BOARD_HARDWARE).rc \
    device/rockchip/rk31sdk/init.$(TARGET_BOARD_HARDWARE).usb.rc:root/init.$(TARGET_BOARD_HARDWARE).usb.rc \
    device/rockchip/rk31sdk/ueventd.$(TARGET_BOARD_HARDWARE).rc:root/ueventd.$(TARGET_BOARD_HARDWARE).rc \
    device/rockchip/rk31sdk/media_profiles.xml:system/etc/media_profiles.xml \
    device/rockchip/rk31sdk/alarm_filter.xml:system/etc/alarm_filter.xml \
    device/rockchip/rk31sdk/rk29-keypad.kl:system/usr/keylayout/rk29-keypad.kl

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.nonsmartphone.le.conf:system/etc/bluetooth/main.conf \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	$(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf


PRODUCT_COPY_FILES += \
    device/rockchip/rk31sdk/vold.fstab:system/etc/vold.fstab 

# For audio-recoard 
PRODUCT_PACKAGES += \
    libsrec_jni

ifeq ($(TARGET_BOARD_PLATFORM),rk30xx)
include device/rockchip/common/gpu/rk30xx_gpu.mk  
else
include device/rockchip/common/gpu/rk3168_gpu.mk
endif

include device/rockchip/common/ipp/rk29_ipp.mk
include device/rockchip/common/ion/rk30_ion.mk
include device/rockchip/common/bin/rk30_bin.mk
include device/rockchip/common/nand/rk30_nand.mk
include device/rockchip/common/webkit/rk31_webkit.mk
include device/rockchip/common/vpu/rk30_vpu.mk
include device/rockchip/common/wifi/rk30_wifi.mk
ifeq ($(strip $(BOARD_HAVE_BLUETOOTH)),true)
    include device/rockchip/common/bluetooth/rk30_bt.mk
endif
include device/rockchip/common/etc/adblock.mk
include device/rockchip/common/phone/rk30_phone.mk
include device/rockchip/common/features/rk-core.mk
include device/rockchip/common/features/rk-camera.mk
include device/rockchip/common/features/rk-camera-front.mk

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    NoiseField \
    PhaseBeam \
    librs_jni \
    libjni_pinyinime \
    hostapd_rtl

# HAL
PRODUCT_PACKAGES += \
    power.$(TARGET_BOARD_PLATFORM) \
    sensors.$(TARGET_BOARD_HARDWARE) \
    gralloc.$(TARGET_BOARD_HARDWARE) \
    hwcomposer.$(TARGET_BOARD_HARDWARE) \
    lights.$(TARGET_BOARD_HARDWARE) \
    camera.$(TARGET_BOARD_HARDWARE) \
    Camera \
    akmd 

# Amazon	
PRODUCT_PACKAGES += \
	 AmazonApps \
	 liblatency.so \
	 amazon \
	 libA9FlowEngine.so \
	 audible \
	 imdb \
	 amazon_kindle \
	 libAAX_SDK.so \
	 libNativeLibraryWrapper.so \
	 amazon_mp3

# charge
PRODUCT_PACKAGES += \
    charger \
    charger_res_images 

# drmservice
PRODUCT_PACKAGES += \
    drmservice

PRODUCT_CHARACTERISTICS := tablet

# audio lib
PRODUCT_PACKAGES += \
    audio_policy.$(TARGET_BOARD_HARDWARE) \
    audio.primary.$(TARGET_BOARD_HARDWARE) \
    audio.a2dp.default\
    audio.r_submix.default

# Filesystem management tools
# EXT3/4 support
PRODUCT_PACKAGES += \
    mke2fs \
    e2fsck \
    tune2fs \
    resize2fs \
    mkdosfs

# audio lib
ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
PRODUCT_PACKAGES += \
    libasound \
    alsa.default \
    acoustics.default



######################################
# 	phonepad codec list
######################################
ifeq ($(strip $(BOARD_CODEC_WM8994)),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/phone/codec/asound_phonepad_wm8994.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT5625_SPK_FROM_SPKOUT)),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/phone/codec/asound_phonepad_rt5625.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT5625_SPK_FROM_HPOUT)),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/phone/codec/asound_phonepad_rt5625_spk_from_hpout.conf:system/etc/asound.conf
endif

ifeq ($(strip $(BOARD_CODEC_RT3261)),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/phone/codec/asound_phonepad_rt3261.conf:system/etc/asound.conf
endif


ifeq ($(strip $(BOARD_CODEC_ITV)),true)
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/asound_itv.conf:system/etc/asound.conf
endif


$(call inherit-product-if-exists, external/alsa-lib/copy.mk)

ifeq ($(strip $(BUILD_WITH_ALSA_UTILS)),true)
    $(call inherit-product-if-exists, external/alsa-utils/copy.mk)
endif

endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.sys.strictmode.visual=false \
    dalvik.vm.jniopts=warnonly \
    ro.rksdk.version=RK30_ANDROID$(PLATFORM_VERSION)-SDK-v1.00.00 \
    sys.hwc.compose_policy=0 \
    sys.ffmpeg_sf.switch=0   \
    sys.dts_ac3.shield=0    \
    sf.power.control=2073600 \
    ro.sf.fakerotation=true \
    ro.sf.hwrotation=270 \
    ro.rk.MassStorage=false \
    ro.rk.systembar.voiceicon=false \
    wifi.interface=wlan0 \
    ro.tether.denied=false \
    ro.sf.lcd_density=160 \
    ro.rk.screenoff_time=-1 \
    ro.rk.def_brightness=200\
    ro.rk.homepage_base=http://www.google.com/webhp?client={CID}&amp;source=android-home\
    ro.rk.install_non_market_apps=false\
    ro.default.size=100\
    persist.sys.timezone=Atlantic/Azores\
    ro.product.usbfactory=rockchip_usb \
    wifi.supplicant_scan_interval=15 \
    ro.opengles.version=131072 \
    ro.factory.tool=0 \
    ro.kernel.android.checkjni=0


ifeq ($(strip $(BOARD_HAVE_BLUETOOTH)),true)
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.bt_enable=true
else
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.bt_enable=false
endif

ifeq ($(strip $(MT6622_BT_SUPPORT)),true)
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.btchip=mt6622
endif
ifeq ($(strip $(BLUETOOTH_USE_BPLUS)),true)
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.btchip=broadcom.bplus
endif

ifeq ($(strip $(MT7601U_WIFI_SUPPORT)),true)
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.wifichip=mt7601u
endif
PRODUCT_TAGS += dalvik.gc.type-precise


# if no flash partition,set this property
ifeq ($(strip $(BUILD_WITH_NOFLASH)),true)
PRODUCT_PROPERTY_OVERRIDES += \
       ro.factory.storage_policy=1 \
       persist.sys.usb.config=mtp \
       testing.mediascanner.skiplist = /storage/sdcard0/Android/
else
PRODUCT_PROPERTY_OVERRIDES += \
       ro.factory.storage_policy=0 \
       persist.sys.usb.config=mass_storage \
       testing.mediascanner.skiplist = /mnt/sdcard/Android/
endif


# NTFS support
PRODUCT_PACKAGES += \
    ntfs-3g

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    librecovery_ui_rk30sdk

#for bt
PRODUCT_PACKAGES += \
        bt_vendor.conf

# for bugreport
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_COPY_FILES += device/rockchip/rk31sdk/bugreport.sh:system/bin/bugreport.sh
endif

# wifi
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml



# vpu render video mode
PRODUCT_PROPERTY_OVERRIDES += \
		video.use.overlay=1

ifeq ($(strip $(BOARD_BOOT_READAHEAD)),true)
    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/proprietary/readahead/readahead:root/sbin/readahead \
        $(LOCAL_PATH)/proprietary/readahead/readahead_list.txt:root/readahead_list.txt
endif

#whtest for bin
PRODUCT_COPY_FILES += \
    device/rockchip/rk31sdk/whtest.sh:system/bin/whtest.sh


#############################################
#for drm function
#############################################
PRODUCT_COPY_FILES += \
	vendor/widevine_bin/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
	vendor/widevine_bin/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
	vendor/widevine_bin/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
	vendor/widevine_bin/libwvm.so:system/vendor/lib/libwvm.so \
	vendor/widevine_bin/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
	vendor/widevine_bin/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	vendor/widevine_bin/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar


$(call inherit-product, external/wlan_loader/wifi-firmware.mk)
#$(call inherit-product, $(LOCAL_PATH)/bluetooth/firmware/bt-firmware.mk)

#BT_FIRMWARE_FILES := $(shell ls $(LOCAL_PATH)/bluetooth/firmware)
#PRODUCT_COPY_FILES += \
#    $(foreach file, $(BT_FIRMWARE_FILES), $(LOCAL_PATH)/bluetooth/firmware/$(file):system/vendor/firmware/$(file))

PRODUCT_COPY_FILES += \
        device/rockchip/rk31sdk/settings_disabled_menu_list.xml:system/etc/permissions/settings_disabled_menu_list.xml

PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.software.pppoe.xml:system/etc/permissions/android.software.pppoe.xml
$(call inherit-product, external/rp-pppoe/pppoe-copy.mk)


PRODUCT_PROPERTY_OVERRIDES += \
        ro.vendor.sw.version=$(VENDOR_SOFTWARE_VERSION)
include device/rockchip/common/proprietary/rk_proprietary.mk
