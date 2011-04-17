# Inherit AOSP device configuration for espresso.
$(call inherit-product, device/htc/espresso/espresso.mk)

# Inherit some common kmobsmod stuff.
$(call inherit-product, vendor/kmobs/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/kmobs/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kmobs_espresso
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := espresso
PRODUCT_MODEL := T-Mobile myTouch 3G Slide
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 PRODUCT_NAME=htc_espresso BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/kmobs/prelink-linux-arm-msm722x.map

# Extra Espresso overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kmobs/overlay/espresso

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Build GanOptimizer
PRODUCT_PACKAGES += GanOptimizer

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Slide
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Slide
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Slide-KANG
    endif
endif

#
# Copy espresso specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/kmobs/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
