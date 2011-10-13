# Inherit device configuration for zeus.
$(call inherit-product, device/semc/zeusc/device_zeusc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)


#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_zeusc
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := zeusc
PRODUCT_MODEL := R800x
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Play BUILD_ID=3.0.1.A.0.145 BUILD_DISPLAY_ID=3.0.1.A.0.145 BUILD_FINGERPRINT=SEMC/R800i_1247-6199/R800i:2.3.3/3.0.1.A.0.145/bn_p:user/release-keys PRIVATE_BUILD_DESC="LT15i-user 2.3.3 3.0.1.A.0.145 bn_P test-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_zeus_defconfig

# Extra zeus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/zeusc

# Add the Torch app
PRODUCT_PACKAGES += Torch


# BCM FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-XperiaPlayCDMA-R800x
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-XperiaPlayCDMA-R800x
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-XperiaPlayCDMA-R800x-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
