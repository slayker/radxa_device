
CUR_PATH := device/rockchip/common/app
# copy all model files
define all-models-files-under
$(patsubst ./%,%, \
	$(shell cd $(CUR_PATH)/$(1) ; \
    find ./ -type f -and -not -name "*.apk" -and -not -name "*.so" -and -not -name "*.mk") \
)
endef

COPY_FILES := $(call all-models-files-under,facelock)
PRODUCT_COPY_FILES += $(foreach files, $(COPY_FILES), \
	$(addprefix $(CUR_PATH)/facelock/, $(files)):$(addprefix system/, $(files)))

PRODUCT_PACKAGES += \
    FaceLock
 
PRODUCT_COPY_FILES += \
	device/rockchip/common/app/facelock/libfacelock_jni.so:system/lib/libfacelock_jni.so

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.facelock = enable_facelock \
    persist.facelock.detect_cutoff=5000 \
    persist.facelock.recog_cutoff=5000
