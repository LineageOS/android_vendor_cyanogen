# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/supersonic.mk)

# Inherit some common kmobsmod stuff.
$(call inherit-product, vendor/kmobs/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kmobs_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRI40 PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/252548:user/release-keys PRIVATE_BUILD_DESC="3.29.651.5 CL252548 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=kmobs_supersonic_defconfig

# Extra Supersonic overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/kmobs/overlay/supersonic

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Broadcom FM radio
$(call inherit-product, vendor/kmobs/products/bcm_fm_radio.mk)

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Supersonic
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Supersonic
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-Supersonic-KANG
    endif
endif

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/kmobs/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
