CUR_PATH := device/rockchip/common/app
PRODUCT_PACKAGES += \
	Chrome\
	MediaFloat \
    RkVideoPlayer
PRODUCT_COPY_FILES += \
	$(CUR_PATH)/apk/flashplayer:system/app/flashplayer \
	$(CUR_PATH)/apk/SuperSU.apk:system/app/SuperSU.apk \
	$(CUR_PATH)/apk/ESFileExplorer.apk:system/app/ESFileExplorer.apk
