#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pnangns device
$(call inherit-product, device/motorola/pnangn/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_pnangn
PRODUCT_DEVICE := pnangn
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G - 2023

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="pnangn_g-user 14 U1TPNS34.26-78-3-17 0e32f-bf828 release-keys MUR1-0.94" \
    BuildFingerprint=motorola/pnangn_g/pnangn:14/U1TPNS34.26-78-3-17/0e32f-bf828:user/release-keys \
    DeviceProduct=pnangn_g
