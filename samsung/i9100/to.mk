LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit devic stuff specific to TO
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/galaxys2-common/to.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/i9100/overlay

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9100
PRODUCT_NAME := to_i9100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.1.2/JZO54K/I9100XWMS2:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.2 JZO54K I9100XWMS2 release-keys"
