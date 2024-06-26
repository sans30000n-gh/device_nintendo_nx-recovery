#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from nx_tab device
$(call inherit-product, device/nintendo/nx_tab/device.mk)

PRODUCT_DEVICE := nx_tab
PRODUCT_NAME := twrp_nx_tab
PRODUCT_BRAND := NINTENDO
PRODUCT_MODEL := Switch
PRODUCT_MANUFACTURER := nintendo

PRODUCT_GMS_CLIENTID_BASE := android-nvidia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_nx_tab-userdebug 14 AP1A.240505.005 4015571928 release-keys"

BUILD_FINGERPRINT := NVIDIA/nx/nx:11/RQ1A.210105.003/7825230_3167.5736:user/release-keys
