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

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

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

#Matrixx Stuff
WITH_GMS := true
WITH_EXTRA_GAPPS := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
WITH_BCR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode
TARGET_BOOT_ANIMATION_RES := 1080
MATRIXX_MAINTAINER := Rahul_Singh
TARGET_CUSTOM_UDFPS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
SURFACE_FLINGER_BOOST := true
TARGET_OPTIMIZED_DEXOPT := true
USE_REALITY_ENGINE := true
# Torch Control
TORCH_STR_SUPPORTED := true

# doze gestures
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true

#UDFPS
TARGET_HAS_UDFPS := true

#surface_flinger_boost
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
