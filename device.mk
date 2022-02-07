#
# Copyright (C) 2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/lemonkebab/lemonkebab-vendor.mk)

TARGET_KERNEL_VERSION := 4.19

PRODUCT_BOARD_PLATFORM := kona
PRODUCT_USES_QCOM_HARDWARE := true


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# AOSP Recovery
TARGET_USES_AOSP_RECOVERY := true

# VNDK
PRODUCT_USE_PRODUCT_VNDK_OVERRIDE := true
PRODUCT_EXTRA_VNDK_VERSIONS := 30

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# QTI components
TARGET_BOARD_PLATFORM := kona
TARGET_COMMON_QTI_COMPONENTS := all

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    device/oneplus/lemonkebab


# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Vendor service manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Vendor libstdc++
PRODUCT_PACKAGES += \
    libstdc++.vendor

# API Level
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_BUILD_SUPER_PARTITION := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true


