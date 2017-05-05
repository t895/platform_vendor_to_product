# Copyright (C) 2014 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, device/xiaomi/mido/full_mido.mk)

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/xiaomi/mido/overlay

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_NAME := to_mido
PRODUCT_DEVICE := mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="xiaomi/mido/mido:6.0.1/MMB29M/V8.2.4.0.MCFMIDL:user/release-keys" \
    PRIVATE_BUILD_DESC="mido-user 6.0.1 MMB29M V8.2.4.0.MCFMIDL release-keys"
