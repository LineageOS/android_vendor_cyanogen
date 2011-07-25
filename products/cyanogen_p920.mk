# Inherit device configuration
$(call inherit-product, device/lge/p920/p920.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_p920
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p920
PRODUCT_MODEL := Optimus 3D
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_Cosmopolitan BUILD_ID=FRG83G BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT="lge/lge_Cosmopolitan/p920/omap4sdp:2.2.2/FRG83G/V10b.EUR-XXX.19c149d2a3:user/release-keys" PRIVATE_BUILD_DESC="lge_Cosmopolitan-user 2.2.2 FRG83G p920.20110617 release-keys"

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-Optimus3D
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-Optimus3D
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-Optimus3D-KANG
    endif
endif

#
# Copy prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Add the Torch app
#PRODUCT_PACKAGES += Torch
