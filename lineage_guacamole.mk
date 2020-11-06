#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

YOUR_HW_PLATFORM := sm8150

# Hardware
PRODUCT_BOARD_PLATFORM := $(YOUR_HW_PLATFORM)
PRODUCT_USES_QCOM_HARDWARE := true

# HALS
SRC_AUDIO_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/audio
SRC_DISPLAY_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/display
SRC_MEDIA_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/media

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
$(LOCAL_PATH) \
hardware/qcom-caf/$(YOUR_HW_PLATFORM)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7 Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:10/QKQ1.190716.003/1909110008:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7Pro \
    PRODUCT_NAME=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 10 QKQ1.190716.003 1909110008 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
