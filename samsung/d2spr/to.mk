LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/d2-common/to.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2spr \
    TARGET_DEVICE=d2spr \
    BUILD_FINGERPRINT="samsung/d2spr/d2spr:4.4.2/KOT49H/L710VPUDNJ2:user/release-keys" \
    PRIVATE_BUILD_DESC="d2spr-user 4.4.2 KOT49H L710VPUDNJ2 release-keys"

PRODUCT_NAME := to_d2spr
PRODUCT_DEVICE := d2spr
