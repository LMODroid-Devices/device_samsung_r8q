#
# Copyright (C) 2024-2025 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r8q device
$(call inherit-product, device/samsung/r8q/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lmodroid_r8q
PRODUCT_DEVICE := r8q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G780G
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := r8qxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r8qxx-user 11 RP1A.200720.012 G780GXXSDEXJ3 release-keys" \
    TARGET_PRODUCT=r8qxx

BUILD_FINGERPRINT := "samsung/r8qxx/r8q:11/RP1A.200720.012/G780GXXSDEXJ3:user/release-keys"
