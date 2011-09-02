# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit CM device configuration for jordan.
$(call inherit-product, device/motorola/jordan/jordan.mk)

# Extra jordan overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/jordan

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_jordan
PRODUCT_BRAND := MOTO
PRODUCT_DEVICE := jordan
PRODUCT_MODEL := MB525
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GRK39C PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} TARGET_DEVICE=umts_jordan BUILD_FINGERPRINT=MOTO/${PRODUCT_MODEL}_${PRODUCT_SFX}/umts_jordan/jordan:2.3.5/${PRODUCT_SBF}/${UTC_DATE}:user/release-keys PRODUCT_BRAND=MOTO PRIVATE_BUILD_DESC="umts_jordan-user 2.3.5 ${PRODUCT_SFX}_${PRODUCT_SBF} ${UTC_DATE} release-keys" BUILD_NUMBER=${DATE} BUILD_VERSION_TAGS=release-keys TARGET_BUILD_TYPE=user USER=CyanogenDefy

# Set ro.modversion
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%y%m%d-%H%M)-NIGHTLY-Jordan
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-jordan
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC1-jordan
    endif
endif

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_jordan_defconfig

# Copy hdpi specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)
PRODUCT_SBF := 3.4.2-179-4
PRODUCT_SFX := JOREM_U3

# Inherit common GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Add the Torch app
PRODUCT_PACKAGES += Torch