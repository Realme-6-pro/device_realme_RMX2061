#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2061 device
$(call inherit-product, device/realme/RMX2061/device.mk)

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common stuff
$(call inherit-product, vendor/awaken/config/common.mk)

# Device identifier
PRODUCT_NAME := awaken_RMX2061
PRODUCT_DEVICE := RMX2061
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 6 Pro
PRODUCT_MANUFACTURER := Realme
PRODUCT_GMS_CLIENTID_BASE := android-realme

#PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX2061" \
    TARGET_DEVICE="RMX2061"

# GMS	
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := false
AWAKEN_BUILD_TYPE := OFFICIAL