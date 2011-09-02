# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit CM device configuration for fascinatemtd.
$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

# Extra fascinatemtd overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/fascinatemtd

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := fascinatemtd
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRK39C BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Fascinate
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Fascinate
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Fascinate-KANG-$(shell date +%m%d)
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_fascinatemtd_defconfig

# Copy hdpi specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip