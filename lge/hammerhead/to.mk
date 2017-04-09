#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/lge/hammerhead/overlay

# Build using uber toolchain on linux but use default toolchain on darwin.
ifneq ($(HOST_OS),darwin)
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-uber/bin
TARGET_GCC_VERSION_EXP := 4.9-uber
endif

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/aosp_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := to_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"
