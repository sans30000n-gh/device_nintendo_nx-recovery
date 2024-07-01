#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit full configuration for nx.
include device/nintendo/nx/lineage.mk    

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration for nx.
$(call inherit-product, device/nintendo/nx/device.mk)

# Inherit from nx_tab device
$(call inherit-product, device/nintendo/nx_tab/device.mk)

PRODUCT_DEVICE := nx_tab
PRODUCT_NAME := twrp_nx_tab
PRODUCT_BRAND := NINTENDO
PRODUCT_MODEL := Switch
PRODUCT_MANUFACTURER := nintendo
