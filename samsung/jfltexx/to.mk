LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/jf-common/to.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/jfltexx/overlay

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfltexx \
  TARGET_DEVICE=jfltexx \
  BUILD_FINGERPRINT=samsung/jfltexx/jflte:5.0.1/LRX22C/I9505XXUHPF4:user/release-keys \
  PRIVATE_BUILD_DESC="jfltexx-user 5.0.1 LRX22C I9505XXUHPF4 release-keys"

PRODUCT_DEVICE := jfltexx
PRODUCT_NAME := to_jfltexx
