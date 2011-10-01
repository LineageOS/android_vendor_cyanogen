# Inherit device configuration for coconut.
$(call inherit-product, device/semc/coconut/device_coconut.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_coconut
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := coconut
PRODUCT_MODEL := WT19i
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=WT19i BUILD_ID=4.0.1.A.0.283 BUILD_DISPLAY_ID=4.0.1.A.0.283 BUILD_FINGERPRINT=SEMC/WT19i_1255-0908/WT19i:2.3.4/4.0.1.A.0.283/5P733w:user/release-keys PRIVATE_BUILD_DESC="WT19i-user 2.3.4 4.0.1.A.0.283 5P733w test-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_coconut_defconfig

# Extra coconut overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/coconut

# Add the Torch app
PRODUCT_PACKAGES += Torch

# BCM FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-XperiaLive-WT19i
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-XperiaLive-WT19i
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-XperiaLive-WT19i-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
