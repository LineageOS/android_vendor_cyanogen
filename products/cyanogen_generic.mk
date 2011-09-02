# Inherit some common CyanogenMod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit CM device configuration for generic target
$(call inherit-product, build/target/product/full.mk)

# Setup device specific product configuration.
PRODUCT_NAME := cyanogen_generic
PRODUCT_BRAND := cyanogenmod
PRODUCT_DEVICE := generic
PRODUCT_MODEL := CyanogenMod
PRODUCT_MANUFACTURER := CyanogenMod

# Set generic ro.modversion
ro.modversion=CyanogenMod-7

# Move dalvik cache to data partition where there is more room to solve startup problems
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1