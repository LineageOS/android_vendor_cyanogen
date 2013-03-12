# Inherit AOSP device configuration for mooncake.
$(call inherit-product, device/zte/mooncake/device_mooncake.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_mooncake
PRODUCT_BRAND := zte
PRODUCT_DEVICE := mooncake
PRODUCT_MODEL := Racer
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Racer BUILD_ID=GRJ22 BUILD_FINGERPRINT=ZTE/P729_TELE2/blade:2.3.5/GRJ22/eng..20111111.012623:user/release-keys PRIVATE_BUILD_DESC="P729_TELE2-user 2.3.5 GRJ22 eng..20111111.012623 release-keys"

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Release name and versioning
PRODUCT_RELEASE_NAME := Racer
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy ldpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip
