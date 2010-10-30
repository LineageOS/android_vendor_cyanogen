# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Operator info list
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/operators.xml:system/etc/operators.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk
