# Copyright (C) 2016 Team OctOs
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

# Build using uber toolchain on linux but use default toolchain on darwin.
#ifneq ($(HOST_OS),darwin)
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-uber/bin
#TARGET_GCC_VERSION_EXP := 4.9-uber
#endif

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/huawei/angler/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common CM stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Remove fstab.angler from PRODUCT_COPY_FILES
TARGET_COPY_FILES_OVERRIDES := \
    root/fstab.angler

# Add fstab.angler as a module
PRODUCT_PACKAGES += \
    fstab.angler

# Setup device specific product configuration.
PRODUCT_NAME := to_angler
PRODUCT_BRAND := Google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.2/N2G48B/4073501:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G48B 4073501 release-keys"
