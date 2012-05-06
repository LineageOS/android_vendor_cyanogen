# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration for lge e720.
$(call inherit-product, device/lge/e720/e720.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_e720
PRODUCT_BRAND := lge
PRODUCT_DEVICE := e720
PRODUCT_MODEL := LG-E720
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=alessi BUILD_ID=FRG83 BUILD_FINGERPRINT=LGE/alessi/alessi/alessi:2.2.1/FRG83/eng.kasamsetty.t.20110531.154135:user/release-keys PRIVATE_BUILD_DESC="alessi-user 2.2.1 FRG83 eng.kasamsetty.t.20110531.154135 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusChic
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
