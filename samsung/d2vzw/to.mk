LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/d2-common/to.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2vzw \
    TARGET_DEVICE=d2vzw \
    BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.4.2/KOT49H/I535VRUDNE1:user/release-keys" \
    PRIVATE_BUILD_DESC="d2vzw-user 4.4.2 KOT49H I535VRUDNE1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_NAME := to_d2vzw
PRODUCT_DEVICE := d2vzw
