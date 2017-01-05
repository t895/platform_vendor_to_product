LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/d2-common/to.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2uc \
    TARGET_DEVICE=d2att \
    BUILD_FINGERPRINT="samsung/d2uc/d2att:4.4.2/KOT49H/I747UCUFNJ2:user/release-keys" \
    PRIVATE_BUILD_DESC="d2uc-user 4.4.2 KOT49H I747UCUFNJ2 release-keys"

PRODUCT_NAME := to_d2att
PRODUCT_DEVICE := d2att
