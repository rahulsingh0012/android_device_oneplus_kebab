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

# Inherit some common Voltage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

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
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
SURFACE_FLINGER_BOOST := true
TARGET_OPTIMIZED_DEXOPT := true
USE_REALITY_ENGINE := true
# Torch Control
TORCH_STR_SUPPORTED := true

# doze gestures
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := true
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := true

#surface_flinger_boost
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

# Charging
BYPASS_CHARGE_SUPPORTED ?= true

# Path for charge toggle
BYPASS_CHARGE_TOGGLE_PATH ?= /sys/class/oplus_chg/battery/mmi_charging_enable

# Boost Framework
VOLTAGE_CPU_SMALL_CORES := 0,1,2
VOLTAGE_CPU_BIG_CORES := 3,4,5,6,7
VOLTAGE_CPU_SYS_BG := 0-3
VOLTAGE_CPU_BG := 0-2
VOLTAGE_CPU_FG := 0-7
VOLTAGE_CPU_LIMIT_BG := 0-2
VOLTAGE_CPU_UNLIMIT_UI := 0-7
VOLTAGE_CPU_LIMIT_UI := 0-5
VOLTAGE_CPU_DISPLAY := 6-7
