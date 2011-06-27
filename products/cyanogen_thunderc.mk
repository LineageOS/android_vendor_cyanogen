$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit device configuration for the thunderc.
# TODO: Split this up into VM670 and LS670 files here
# and make sure that device repo contains the common code.
$(call inherit-product, device/lge/thunderc/device_thunderc.mk)

# Include FM-Radio stuff (does not work at this moment)
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc 
PRODUCT_MODEL := LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_NAME := cyanogen_thunderc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=thunderc BUILD_UTC_DATE=0

# Live wallpaper packages
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers

#CYANOGEN_NIGHTLY := true

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-thunderc-IHO
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-thunderc
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-thunderc-KANG-IHO
    endif
endif

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
