# Inherit device configuration for sunfire.
$(call inherit-product, device/motorola/sunfire/sunfire.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Include WiMax - currently HTC-spec
##$(call inherit-product, vendor/cyanogen/products/wimax.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_sunfire
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sunfire
PRODUCT_MODEL := MB855
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=sprint PRODUCT_NAME=moto_sunfire BUILD_ID=4.5.1A-1_SUN-198_6 BUILD_PRODUCT=moto_sunfire BUILD_DISPLAY_ID=4.5.1A-1_SUN-198_6 BUILD_FINGERPRINT=sprint/moto_sunfire/sunfire:2.3.4/4.5.1A-1_SUN-198_6/CM:user/release-keys PRIVATE_BUILD_DESC="sunfire-user 2.3.4 4.5.1A-1_SUN-198_6 CM release-keys"

# Extra Olympus-based overlay - Sunfire is a CDMA-enabled olympus
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/cyanogen/overlay/olympus

PRODUCT_RELEASE_NAME := Sunfire
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
