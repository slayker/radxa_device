# Get the long list of APNs
PRODUCT_COPY_FILES += device/rockchip/common/phone/etc/apns-full-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += device/rockchip/common/phone/etc/spn-conf.xml:system/etc/spn-conf.xml
# The rockchip rk31sdk board
include device/rockchip/rk31sdk/BoardConfig.mk
$(call inherit-product, device/rockchip/rk31sdk/device.mk)

PRODUCT_BRAND := radxa
PRODUCT_DEVICE := rk31sdk
PRODUCT_NAME := rk31sdk
PRODUCT_MODEL := radxa rock
PRODUCT_MANUFACTURER := radxa


PRODUCT_PROPERTY_OVERRIDES += \
			ro.product.version = 1.0.0 \
			ro.product.ota.host = www.rockchip.com:2300
