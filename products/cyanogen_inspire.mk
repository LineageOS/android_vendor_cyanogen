# Inherit device configuration for ace.
$(call inherit-product, device/htc/ace/ace.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_inspire
PRODUCT_BRAND := htc
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Inspire 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_inspire BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=‎cingular_us/htc_ace/ace/ace:2.2.1/FRG83D/318736:user/release-keys PRIVATE_BUILD_DESC="1.72.405.3 CL296490 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_ace_defconfig

# Use the overlay from Ace
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ace

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Inspire4g
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC1-Inspire4g
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC1-inspire4g-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
