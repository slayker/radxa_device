PRODUCT_COPY_FILES += \
	device/rockchip/common/wifi/lib/modules/wlan.ko:system/lib/modules/wlan.ko \
	device/rockchip/common/wifi/lib/modules/rkwifi.ko:system/lib/modules/rkwifi.ko \
	device/rockchip/common/wifi/lib/modules/rkwifi.oob.ko:system/lib/modules/rkwifi.oob.ko \
	device/rockchip/common/wifi/lib/modules/8188eu.ko:system/lib/modules/8188eu.ko \
	device/rockchip/common/wifi/lib/modules/8192cu.ko:system/lib/modules/8192cu.ko \
	device/rockchip/common/wifi/lib/modules/rt5370sta.ko:system/lib/modules/rt5370sta.ko \
	device/rockchip/common/wifi/lib/modules/rt5370ap.ko:system/lib/modules/rt5370ap.ko \
	device/rockchip/common/wifi/lib/modules/mt5931.ko:system/lib/modules/mt5931.ko \
	device/rockchip/common/wifi/lib/modules/8723au.ko:system/lib/modules/8723au.ko \
	device/rockchip/common/wifi/lib/rtl_supplicant:system/bin/rtl_supplicant \
	device/rockchip/common/wifi/lib/modules/mt7601sta.ko:system/lib/modules/mt7601sta.ko \
	device/rockchip/common/wifi/lib/modules/mt7601ap.ko:system/lib/modules/mt7601ap.ko \
	device/rockchip/common/wifi/lib/modules/mtprealloc7601Usta.ko:system/lib/modules/mtprealloc7601Usta.ko \
	device/rockchip/common/wifi/lib/rtl_hostapd:system/bin/rtl_hostapd \
	device/rockchip/common/wifi/lib/modules/esp8089.ko:system/lib/modules/esp8089.ko\
	device/rockchip/common/wifi/lib/esp_supplicant:system/bin/esp_supplicant \
	device/rockchip/common/wifi/lib/esp_hostapd:system/bin/esp_hostapd \
	device/rockchip/common/wifi/lib/esp_init_data.bin:system/lib/modules/esp_init_data.bin \
	device/rockchip/common/wifi/lib/init_data.conf:system/lib/modules/init_data.conf  	

ifeq ($(strip $(MT5931_WIFI_SUPPORT)),true)
PRODUCT_COPY_FILES += \
    device/rockchip/common/wifi/mt5931/wpa_supplicant/wpa_cli:system/bin/wpa_cli \
    device/rockchip/common/wifi/mt5931/wpa_supplicant/wpa_supplicant:system/bin/wpa_supplicant \
    device/rockchip/common/wifi/mt5931/wpa_supplicant/libwpa_client.so:system/lib/libwpa_client.so \
    device/rockchip/common/wifi/mt5931/wpa_supplicant/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/rockchip/common/wifi/mt5931/wpa_supplicant/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
endif

