# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/zte/axon7/overlay

# Inherit from axon7 device
$(call inherit-product, device/zte/axon7/device.mk)

# Inherit some common OctOS stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := axon7
PRODUCT_NAME := to_axon7
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE A2017U
PRODUCT_MANUFACTURER := ZTE

PRODUCT_GMS_CLIENTID_BASE := android-zte

TARGET_VENDOR := zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="P996A01_N" \
    BUILD_FINGERPRINT="ZTE/P996A01_N/ailsa_ii:7.0/NRD90M/20170128.052618:user/release-keys" \
    PRIVATE_BUILD_DESC="P996A01_N-user 7.0 NRD90M 20170128.052618 release-keys"
