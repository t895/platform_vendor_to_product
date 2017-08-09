#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)
# Provide meaningful APN configuration

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/google/sailfish/overlay

# Build using uber toolchain on linux but use default toolchain on darwin.
#ifneq ($(HOST_OS),darwin)
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-uber/bin
#TARGET_GCC_VERSION_EXP := 4.9-uber
#endif

PRODUCT_COPY_FILES := device/google/marlin/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit aosp_sailfish
 $(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Team OctOs configuration
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0

PRODUCT_NAME := to_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 
PRODUCT_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_COPY_FILES += device/google/marlin/fstab.aosp_common:root/fstab.marlin

$(call inherit-product-if-exists, vendor/google/sailfish/device-vendor-sailfish.mk)
-include device/google/marlin/sailfish/device-lineage.mk
$(call inherit-product, device/google/marlin/device-sailfish.mk)
PRODUCT_PACKAGES += \
    Launcher3

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.2/NJH47F/4146041:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.2 NJH47F 4146041 release-keys"
