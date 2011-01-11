# Inherit AOSP device configuration for legend.
$(call inherit-product, device/htc/tattoo/full_tattoo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=device/htc/tattoo/kernel

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_tattoo
PRODUCT_BRAND := htc-tattoo
PRODUCT_DEVICE := tattoo
PRODUCT_MODEL := Tattoo
PRODUCT_MANUFACTURER := htc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_Kalim BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/htc/tattoo/prelink-linux-arm-tattoo.map

# Include the Torch and FM apps
#PRODUCT_PACKAGES += \
#    FM

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += device/htc/tattoo/overlay

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CyanogenMod-6.2.0-RC0-Kalim.9.15

