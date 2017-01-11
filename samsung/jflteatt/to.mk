LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/product/samsung/jf-common/to.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/jflteatt/overlay

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jflteuc \
  TARGET_DEVICE=jflteatt \
  BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.4.4/KTU84P/I337UCUFNJ4:user/release-keys" \
  PRIVATE_BUILD_DESC="jflteuc-user 4.4.4 KTU84P I337UCUFNJ4 release-keys"

PRODUCT_NAME := to_jflteatt
PRODUCT_DEVICE := jflteatt
