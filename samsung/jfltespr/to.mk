$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/jf-common/to.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/jfltespr/overlay

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=jfltespr \
    TARGET_DEVICE=jfltespr \
    BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:5.0.1/LRX22C/L720VPUGOK3:user/release-keys" \
    PRIVATE_BUILD_DESC="jfltespr-user 5.0.1 LRX22C L720VPUGOK3 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_NAME := to_jfltespr
PRODUCT_DEVICE := jfltespr
