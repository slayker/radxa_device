CUR_PATH := device/rockchip/common/app
PRODUCT_COPY_FILES += \
    $(CUR_PATH)/apk/chromeLib/libchromeview.so:system/lib/libchromeview.so \
    $(CUR_PATH)/apk/chromeLib/chrome-command-line:system/etc/chrome-command-line \
    $(CUR_PATH)/apk/chromeLib/chrome.sh:system/bin/chrome.sh

