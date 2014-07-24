# File   : AUTO GENERATED MAKE FILE
# Date   : Tue May 14 17:31:34 CST 2013
# Author : hyl
# ===============================================
ifeq ($(strip $(BOARD_USE_LCDC_COMPOSER)), true)
PRODUCT_COPY_FILES += \
  device/rockchip/common/proprietary/lib/dedicated/hwcomposer.rk30board.so:system/lib/hw/hwcomposer.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/gralloc.rk30board.so:system/lib/hw/gralloc.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/audio.primary.rk30board.so:system/lib/hw/audio.primary.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/audio_policy.rk30board.so:system/lib/hw/audio_policy.rk30board.so    \
  device/rockchip/common/proprietary/lib/dedicated/alsa.default.so:system/lib/hw/alsa.default.so    \
  device/rockchip/common/proprietary/lib/dedicated/acoustics.default.so:system/lib/hw/acoustics.default.so    \
  device/rockchip/common/proprietary/lib/dedicated/libyuvtorgb.so:system/lib/libyuvtorgb.so    \
  device/rockchip/common/proprietary/lib/dedicated/libhwui.so:system/lib/libhwui.so    \
  device/rockchip/common/proprietary/lib/dedicated/libgui.so:system/lib/libgui.so    \
  device/rockchip/common/proprietary/lib/dedicated/libvideoeditorplayer.so:system/lib/libvideoeditorplayer.so    \
  device/rockchip/common/proprietary/lib/dedicated/libvideoeditor_osal.so:system/lib/libvideoeditor_osal.so    \
  device/rockchip/common/proprietary/lib/dedicated/libvideoeditor_videofilters.so:system/lib/libvideoeditor_videofilters.so    \
  device/rockchip/common/proprietary/lib/dedicated/libvideoeditor_core.so:system/lib/libvideoeditor_core.so    \
  device/rockchip/common/proprietary/lib/dedicated/libvideoeditor_jni.so:system/lib/libvideoeditor_jni.so

else
PRODUCT_COPY_FILES += \
  device/rockchip/common/proprietary/lib/osmem/hwcomposer.rk30board.so:system/lib/hw/hwcomposer.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/gralloc.rk30board.so:system/lib/hw/gralloc.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/audio.primary.rk30board.so:system/lib/hw/audio.primary.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/audio_policy.rk30board.so:system/lib/hw/audio_policy.rk30board.so    \
  device/rockchip/common/proprietary/lib/osmem/alsa.default.so:system/lib/hw/alsa.default.so    \
  device/rockchip/common/proprietary/lib/osmem/acoustics.default.so:system/lib/hw/acoustics.default.so    \
  device/rockchip/common/proprietary/lib/osmem/libyuvtorgb.so:system/lib/libyuvtorgb.so    \
  device/rockchip/common/proprietary/lib/osmem/libhwui.so:system/lib/libhwui.so    \
  device/rockchip/common/proprietary/lib/osmem/libgui.so:system/lib/libgui.so    \
  device/rockchip/common/proprietary/lib/osmem/libvideoeditorplayer.so:system/lib/libvideoeditorplayer.so    \
  device/rockchip/common/proprietary/lib/osmem/libvideoeditor_osal.so:system/lib/libvideoeditor_osal.so    \
  device/rockchip/common/proprietary/lib/osmem/libvideoeditor_videofilters.so:system/lib/libvideoeditor_videofilters.so    \
  device/rockchip/common/proprietary/lib/osmem/libvideoeditor_core.so:system/lib/libvideoeditor_core.so    \
  device/rockchip/common/proprietary/lib/osmem/libvideoeditor_jni.so:system/lib/libvideoeditor_jni.so
endif

