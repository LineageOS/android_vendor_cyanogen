# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit CM device configuration for zeusc.
$(call inherit-product, device/semc/zeus/device_zeus.mk)

# Extra zeusc overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/zeus

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_zeusc
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := zeus
PRODUCT_MODEL := R800x
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Play BUILD_ID=3.0.1.A.0.145 BUILD_DISPLAY_ID=GRK39C BUILD_FINGERPRINT=SEMC/R800i_1247-6199/R800i:2.3.3/3.0.1.A.0.145/bn_p:user/release-keys PRIVATE_BUILD_DESC="LT15i-user 2.3.3 3.0.1.A.0.145 bn_P test-keys"

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-XperiaPlay-R800x
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-XperiaPlay-R800x
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-XperiaPlay-R800x-KANG
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_zeus_defconfig

# Copy passion specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip