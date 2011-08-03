# Inherit device configuration for vivo.
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_pyramid
PRODUCT_BRAND := htc
PRODUCT_DEVICE := pyramid
PRODUCT_MODEL := Sensation
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT="tmous/htc_pyramid/pyramid:2.3.4/GRJ22/125597.1:user/release-keys" PRVIATE_BUILD_DESC="1.45.531.1 CL125597 release-keys"

# Extra pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cyanogen/overlay/pyramid \
    vendor/cyanogen/overlay/qhd
# Add the Torch app
PRODUCT_PACKAGES += Torch

# Build GanOptimizer
PRODUCT_PACKAGES += GanOptimizer

# Broadcom FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Sensation
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-SelfKANG5-Sensation
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-SelfKANG5-Sensation-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
