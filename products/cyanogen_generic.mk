# Inherit AOSP device configuration for generic target
$(call inherit-product, build/target/product/full.mk)

# Inherit some common kmobsmod stuff.
$(call inherit-product, vendor/kmobs/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := kmobs_generic
PRODUCT_BRAND := kmobsmod
PRODUCT_DEVICE := generic
PRODUCT_MODEL := CyanogenMod
PRODUCT_MANUFACTURER := CyanogenMod

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

# Generic modversion
ro.modversion=CyanogenMod-7
