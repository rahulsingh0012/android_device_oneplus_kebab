#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8T-user 14 UKQ1.230924.001 R.1a46c89-1_1 release-keys" \
    BuildFingerprint=OnePlus/OnePlus8T/OnePlus8T:14/UKQ1.230924.001/R.1a46c89-1_1:user/release-keys \
    DeviceName=OnePlus8T \
    DeviceProduct=OnePlus8T \
    SystemDevice=OnePlus8T \
    SystemName=OnePlus8T

# Device Flags

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := Rahul_Singh

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon_865

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,16,5,2

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16

# Torch Control
TORCH_STR_SUPPORTED := true

# Los prebuilts
TARGET_INCLUDES_LOS_PREBUILTS := true

# Ax FX
TARGET_INCLUDE_AXFX := false

# BLur
TARGET_ENABLE_BLUR := true

# doze gestures
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true

#GSM
TARGET_INCLUDE_GOOGLE_TELECOMM  := true

#UDFPS
TARGET_HAS_UDFPS := true
