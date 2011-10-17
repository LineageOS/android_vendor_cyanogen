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

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-VENUS2
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-VENUS2
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-VENUS2-KANG
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_venus2_defconfig

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=venus2_vzw BUILD_ID=S273 BUILD_DISPLAY_ID=$(shell date +%m/%d/%Y) BUILD_FINGERPRINT=verizon/venus2_vzw/cdma_venus2/4.6.8 PRIVATE_BUILD_DESC="cdma_venus2-user 2.3 kernel Cyanogenmod 7" TARGET_DEVICE=cdma_venus2 PRODUCT_BRAND=verizon BUILD_NUMBER=4.6.8 BUILD_UTC_DATE=1287722464 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=JackpotClavin

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/venus2

# Add the Torch app
PRODUCT_PACKAGES += Torch
