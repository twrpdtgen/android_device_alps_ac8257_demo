#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ac8257_demo device
$(call inherit-product, device/alps/ac8257_demo/device.mk)

PRODUCT_DEVICE := ac8257_demo
PRODUCT_NAME := omni_ac8257_demo
PRODUCT_BRAND := alps
PRODUCT_MODEL := UJC201_64
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="UJC201-V1.0.66R3-231020_0857"

BUILD_FINGERPRINT := alps/full_UJC201_64/ac8257_demo:9/SP1A.210812.016.A1/663:userdebug/test-keys
