#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/kebab

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += \
    CONFIG_INITRAMFS_IGNORE_SKIP_FLAG=y \
    CONFIG_PROC_CMDLINE_APPEND_ANDROID_FORCE_NORMAL_BOOT=y


# Display
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Partitions
ifeq (,$(filter true, $(WITHOUT_RESERVED_SIZE) $(WITH_GMS)))
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 840000000
endif
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 7511998464
BOARD_SUPER_PARTITION_SIZE := 7516192768

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/kebab/BoardConfigVendor.mk
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Infinity fixes
PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/wlan \
    hardware/qcom-caf/wlan
