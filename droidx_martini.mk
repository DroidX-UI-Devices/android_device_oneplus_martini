#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from martini device
$(call inherit-product, device/oneplus/martini/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

PRODUCT_NAME := droidx_martini
PRODUCT_DEVICE := martini
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := MT2111

PRODUCT_SYSTEM_NAME := MT2111_IND
PRODUCT_SYSTEM_DEVICE := OP5155L1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="MT2111_IND-user 13 TP1A.220905.001 R.12e3387-ac59-a4bd release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/MT2111_IND/OP5155L1:13/TP1A.220905.001/R.12e3387-ac59-a4bd:user/release-keys


# Droidx Props
DROIDX_BUILD_TYPE := OFFICIAL
DROIDX_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_GOOGLE_TELEPHONY := true
EXTRA_UDFPS_ANIMATIONS := true
