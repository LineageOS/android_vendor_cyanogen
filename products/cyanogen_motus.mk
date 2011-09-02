# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit CM device configuration for motus.
$(call inherit-product, device/motorola/motus/motus.mk)

# Extra motus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/motus

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_motus
PRODUCT_BRAND := motus
PRODUCT_DEVICE := motus
PRODUCT_MODEL := MB300
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=motus_att_us TARGET_DEVICE=motus BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRK39C BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-BACKFLIP
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-BACKFLIP
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-BACKFLIP-KANG
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_motus_defconfig

# Copy mdpi specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)