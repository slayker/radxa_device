CUR_PATH := device/rockchip/common/app
PRODUCT_PACKAGES += \
	GoogleCalendar \
	ChromeBookmarksSyncAdapter \
	Gmail \
	GmsCore \
	GoogleBackupTransport \
	GoogleCalendarSyncAdapter \
	GoogleContactsSyncAdapter \
    GoogleEars \
	GoogleFeedback \
	GoogleLoginService \
	GooglePartnerSetup \
    GoogleServicesFramework \
    GoogleTTS \
	Maps \
	MediaUploader \
	NetworkLocation \
	OneTimeInitializer \
	Phonesky \
	Street \
	Talk \
	Velvet \
	VoiceSearchStub

gapps_files := $(shell ls $(CUR_PATH)/googleapps/lib )
PRODUCT_COPY_FILES += $(foreach file, $(gapps_files), \
$(CUR_PATH)/googleapps/lib/$(file):system/lib/$(file))

gapps_files := $(shell ls $(CUR_PATH)/googleapps/framework )
PRODUCT_COPY_FILES += $(foreach file, $(gapps_files), \
    $(CUR_PATH)/googleapps/framework/$(file):system/framework/$(file))

gapps_files := $(shell ls $(CUR_PATH)/googleapps/etc/permissions )
PRODUCT_COPY_FILES += $(foreach file, $(gapps_files), \
	$(CUR_PATH)/googleapps/etc/permissions/$(file):system/etc/permissions/$(file))

gapps_files := $(shell ls $(CUR_PATH)/googleapps/usr/srec/en-US )
PRODUCT_COPY_FILES += $(foreach file, $(gapps_files), \
	$(CUR_PATH)/googleapps/usr/srec/en-US/$(file):system/usr/srec/en-US/$(file))
