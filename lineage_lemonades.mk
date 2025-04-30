#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lemonades
PRODUCT_DEVICE := lemonades
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9R_IND-user 14 UKQ1.230924.001 R.1f0e589-1-3ea7e release-keys" \
    BuildFingerprint=OnePlus/OnePlus9R_IND/OnePlus9R:14/UKQ1.230924.001/R.1f0e589-1-3ea7e:user/release-keys \
    DeviceName=OnePlus9R \
    DeviceProduct=OnePlus9R \
    SystemDevice=OnePlus9R \
    SystemName=OnePlus9R

# Device Flags

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := Itachi

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon_870

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,16,5,2

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16

# Torch Control
TORCH_STR_SUPPORTED := true

# Los prebuilts
TARGET_INCLUDES_LOS_PREBUILTS := true

# Ax FX
TARGET_INCLUDE_AXFX := true

# BLur
TARGET_ENABLE_BLUR := true

# Charging
BYPASS_CHARGE_SUPPORTED ?= true

# Path for charge toggle
BYPASS_CHARGE_TOGGLE_PATH ?= /sys/class/oplus_chg/battery/mmi_charging_enable
