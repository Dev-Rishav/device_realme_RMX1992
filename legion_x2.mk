#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/x2/device.mk)

# Inherit some common Legion stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

#Boot RES
TARGET_BOOT_ANIMATION_RES := 1080

ifeq ($(CURRENT_BUILD_TYPE), gapps)
# Use Gapps
TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := legion_x2
PRODUCT_DEVICE := x2
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme x2
PRODUCT_MANUFACTURER := realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200605.001 6392402 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200605.001/6392402:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
