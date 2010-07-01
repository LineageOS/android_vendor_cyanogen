#
# Copyright (C) 2009 The Android Open Source Project
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

# This is the top-level configuration for a US-configured CyanogenMod build

$(call inherit-product, vendor/cyanogen/products/cyanogen_hdpi.mk)

PRODUCT_NAME := cyanogen_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=ERE27 BUILD_DISPLAY_ID=ERE27 PRODUCT_NAME=verizon/inc/inc/inc:2.1-update1/ERE27/161494:user/release-keys PRIVATE_BUILD_DESC="1.22.605.2 CL161494 release-keys" PRODUCT_BRAND=verizon PRODUCT_NAME=inc

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/passion/media/bootanimation.zip:system/media/bootanimation.zip

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-5-$(shell date +%m%d%Y)-NIGHTLY-Inc
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-5.0.8-test2-Inc
endif

include vendor/htc/inc/device_inc.mk
