# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit CM device configuration for mesmerizemtd.
$(call inherit-product, device/samsung/mesmerizemtd/full_mesmerizemtd.mk)

# Extra mesmerizemtd overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/mesmerizemtd

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_mesmerizemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := mesmerizemtd
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRK39C BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Mesmerize
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Mesmerize
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Mesmerize-KANG-$(shell date +%m%d)
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_mesmerizemtd_defconfig

# Copy hdpi specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip