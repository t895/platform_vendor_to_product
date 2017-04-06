# Copyright (C) 2017 Team OctOs
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

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/motorola/shamu/overlay

# Build using uber toolchain on linux but use default toolchain on darwin.
ifneq ($(HOST_OS),darwin)
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-uber/bin
TARGET_GCC_VERSION_EXP := 4.9-uber
endif

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Team OctOs configuration
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0

# Remove fstab.shamu from PRODUCT_COPY_FILES
TARGET_COPY_FILES_OVERRIDES := \
    root/fstab.shamu

# Add fstab.shamu as a module
PRODUCT_PACKAGES += \
    fstab.shamu

## Device identifier. This must come after all inclusions
PRODUCT_NAME := to_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F26Q/3549652:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F26Q 3549652 release-keys"
