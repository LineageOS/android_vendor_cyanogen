# Inherit AOSP device configuration for passion.
$(call inherit-product, device/motorola/sholes/sholes.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

# Release name and versioning
PRODUCT_RELEASE_NAME := Droid
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=FRG83G BUILD_DISPLAY_ID=GWK74 PRODUCT_NAME=voles TARGET_DEVICE=sholes BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2.2/FRG83G/91102:user/release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="voles-user 2.2.2 FRG83G 91102 release-keys" BUILD_NUMBER=91102 BUILD_UTC_DATE=1294972140 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/sholes

# Add the Torch app
PRODUCT_PACKAGES += Torch
