$(call inherit-product, device/asus/Z00L/full_Z00L.mk)

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/asus/Z00L/overlay

PRODUCT_NAME := to_Z00L
PRODUCT_BRAND := asus
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00L

PRODUCT_GMS_CLIENTID_BASE := android-asus
