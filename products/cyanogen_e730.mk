# Inherit device configuration for lge e730.
$(call inherit-product, device/lge/e730/e730.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_e730
PRODUCT_BRAND := lge
PRODUCT_DEVICE := e730
PRODUCT_MODEL := E730
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_victor BUILD_ID=GRJ22 BUILD_FINGERPRINT=lge/lge_victor/victor:2.3.4/GRJ22/V10a-OCT-05-2011.2ED317DCA9:user/release-keys PRIVATE_BUILD_DESC="lge_victor-user 2.3.4 GRJ22 V10a-OCT-05-2011.2ED317DCA9 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-lge-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_e730_defconfig

# Extra e730 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/e730

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := E730
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
