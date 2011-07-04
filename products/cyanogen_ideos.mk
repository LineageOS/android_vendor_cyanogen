# Inherit AOSP device configuration for Ideos.
$(call inherit-product, device/huawei/ideos/device_ideos.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_ideos
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := ideos
PRODUCT_MODEL := Huawei Ideos
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=huawei_ideos BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-IDEOS
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
          ro.modversion=CyanogenMod-7.1.0-RC1-IDEOS
    else
        PRODUCT_PROPERTY_OVERRIDES += \
          ro.modversion=CyanogenMod-7.1.0-RC1-IDEOS-KANG
    endif
endif

PRODUCT_COPY_FILES +=  \
        device/huawei/ideos/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip
