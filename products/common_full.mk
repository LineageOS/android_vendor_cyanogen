# Inherit common CM stuff
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Theme packages
include vendor/cyanogen/products/themes.mk
