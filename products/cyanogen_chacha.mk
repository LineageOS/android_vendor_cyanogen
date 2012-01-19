# Inherit AOSP device configuration for liberty.
$(call inherit-product, device/htc/chacha/device_chacha.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_chacha
PRODUCT_BRAND := htc
PRODUCT_DEVICE := chacha
PRODUCT_MODEL := HTC ChaCha A810e
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_chacha BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=htc_europe/htc_chacha/chacha:2.3.5/GRJ90/189894.2:user/release-keys PRIVATE_BUILD_DESC="1.54.401.2 CL189894 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/htc/chacha/prelink-linux-arm-msm722x.map

# Broadcom FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := Chacha
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy liberty specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
