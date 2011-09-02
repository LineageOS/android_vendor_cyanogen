# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Inherit CM device configuration for u8220.
$(call inherit-product, device/huawei/u8220/device_u8220.mk)

# Extra u8220 overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/u8220

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_u8220
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8220
PRODUCT_MODEL := U8220/U8230
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8220 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRK39C BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-U8220
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-U8220
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-U8220-KANG
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_u8220_defconfig

# Copy mdpi specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)