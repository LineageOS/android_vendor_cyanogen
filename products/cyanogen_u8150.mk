# Inherit AOSP device configuration for Ideos.
$(call inherit-product, device/huawei/u8150/device_u8150.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_u8150
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8150
PRODUCT_MODEL := Ideos
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=huawei_u8150 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-U8150   
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-U8150
    else
     	   PRODUCT_PROPERTY_OVERRIDES += \
                ro.modversion=CyanogenMod-7.1.0-RC1-U8150-KANG
    endif
endif

PRODUCT_COPY_FILES +=  \
        device/huawei/u8150/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip
