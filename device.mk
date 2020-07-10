#
# Copyright (C) 2015 The CyanogenMod Project
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

# Local overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/e8/overlay

# NFC
$(call inherit-product, device/htc/e8-common/nfc/product_pn547.mk)

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/htc/e8/e8-vendor.mk)

# Inherit from e8-common
$(call inherit-product, device/htc/e8-common/e8-common.mk)
