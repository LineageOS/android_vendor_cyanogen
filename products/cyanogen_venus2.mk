# Inherit device configuration for venus2.
$(call inherit-product, device/motorola/venus2/venus2.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#Inherit common GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_venus2
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := venus2
PRODUCT_MODEL := DROID Pro
PRODUCT_MANUFACTURER := Motorola

# Release name and versioning
PRODUCT_RELEASE_NAME := DROID-Pro
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=VZW PRODUCT_NAME=venus2_vzw TARGET_DEVICE=cdma_venus2 BUILD_DISPLAY_ID=$(shell date +%m/%d/%Y) BUILD_FINGERPRINT=verizon/venus2_vzw/cdma_venus2/venus2:2.3.3/VZW/4.6.8:user/ota-rel-keys,release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="cdma_venus2-user 2.3.3 VZW 4.5.1-110-VNS-22 ota-rel-keys,release-keys" BUILD_NUMBER=4.5.1-110 BUILD_UTC_DATE=1289194863 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=w30471 BUILD_VERSION_TAGS=release-keys USER=w30471

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/venus2

# Add the Torch app
PRODUCT_PACKAGES += Torch
