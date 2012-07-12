# Inherit device configuration for haida.
$(call inherit-product, device/semc/haida/device_haida.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_haida
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := haida
PRODUCT_MODEL := MT11i
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT11i BUILD_ID=4.0.2.A.0.42 BUILD_FINGERPRINT=SEMC/MT11i_1247-0875/MT11i:2.3.4/4.0.2.A.0.42/bn_P:user/release-keys PRIVATE_BUILD_DESC="MT11i-user 2.3.4 4.0.2.A.0.42 bn_P test-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_haida_defconfig

# Extra haida overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/haida

# Add the Torch app
PRODUCT_PACKAGES += Torch


# BCM FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := XperiaNeo-MT11i
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
