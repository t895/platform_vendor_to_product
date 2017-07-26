LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/lge/bullhead/overlay

# Build using uber toolchain on linux but use default toolchain on darwin.
#ifneq ($(HOST_OS),darwin)
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-uber/bin
#TARGET_GCC_VERSION_EXP := 4.9-uber
#endif

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Remove fstab.bullhead from PRODUCT_COPY_FILES
TARGET_COPY_FILES_OVERRIDES := \
    root/fstab.bullhead

# Add fstab.bullhead as a module
PRODUCT_PACKAGES += \
    fstab.bullhead

## Device identifier. This must come after all inclusions
PRODUCT_NAME := to_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:7.1.2/N2G47Z/4045513:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.2 N2G47Z 4045513 release-keys" 
