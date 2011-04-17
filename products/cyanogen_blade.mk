# Inherit AOSP device configuration for blade.
$(call inherit-product, device/zte/blade/device_blade.mk)

# Inherit some common kmobsmod stuff.
$(call inherit-product, vendor/kmobs/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/kmobs/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kmobs_blade
PRODUCT_BRAND := zte
PRODUCT_DEVICE := blade
PRODUCT_MODEL := Blade
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=kmobs_blade BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Blade
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Blade
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Blade-KANG
    endif
endif

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/kmobs/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
