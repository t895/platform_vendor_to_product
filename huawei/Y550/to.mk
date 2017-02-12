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

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/huawei/Y550/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit from these products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/Y550/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_DEVICE := Y550
PRODUCT_NAME := to_Y550
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Y550
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_GMS_CLIENTID_BASE := android-huawei

