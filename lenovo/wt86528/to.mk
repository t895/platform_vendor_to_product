# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, device/lenovo/wt86528/full_wt86528.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Hardcode the path to overlays
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/lenovo/wt86528/overlay

# Assert
TARGET_OTA_ASSERT_DEVICE := wt86528,K31-t3,K31-t7,A6010,A6010 Plus

PRODUCT_NAME := to_wt86528
BOARD_VENDOR := Lenovo
PRODUCT_DEVICE := wt86528

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Specify (Lets be on safer side)
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
