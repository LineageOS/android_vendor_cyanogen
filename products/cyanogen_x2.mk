# Inherit AOSP device configuration for x2.
$(call inherit-product, device/yuhua/x2/full_x2.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_x2
PRODUCT_BRAND := google
PRODUCT_DEVICE := x2
PRODUCT_MODEL := X2
PRODUCT_MANUFACTURER := Yuhua
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=x2 BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/x2/x2/yuhua:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="x2-user 2.2.1 FRG83 60505 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-pxa
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=X2_V4_REL_defconfig

# Include the Torch and FM apps
PRODUCT_PACKAGES += \
    Torch \
    FM

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/passion

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-x2
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.1.0-RC0-x2
endif

#
# Copy x2 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
