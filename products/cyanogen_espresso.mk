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

$(call inherit-product, vendor/cyanogen/products/cyanogen.mk)
  
PRODUCT_NAME := cyanogen_espresso
PRODUCT_BRAND := htc
PRODUCT_DEVICE := espresso
PRODUCT_MODEL := MyTouch Slide
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=ERE27 BUILD_DISPLAY_ID=ERE27 PRODUCT_NAME=htc_espresso TARGET_DEVICE=espresso BUILD_FINGERPRINT=tmobile/htc_espresso/espresso/espresso:2.1-update1/ERE27/176807:user/release-keys PRODUCT_BRAND=tmobile

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/espresso/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGES += \
    Gallery3D \
    LiveWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Stk

# Pick up some sounds
include frameworks/base/data/sounds/OriginalAudio.mk
include frameworks/base/data/sounds/AudioPackage4.mk

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-5-$(shell date +%m%d%Y)-NIGHTLY-Slide
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-5.0.8-Slide
endif

include vendor/htc/espresso/device_espresso.mk
