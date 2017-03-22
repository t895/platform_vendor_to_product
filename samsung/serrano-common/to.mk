LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/serrano-common/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
    vendor/to/product/samsung/serrano-common/audio/mixer_paths.xml:system/etc/mixer_paths.xml

