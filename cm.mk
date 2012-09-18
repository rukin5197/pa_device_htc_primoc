$(call inherit-product, device/htc/primoc/full_primoc.mk)

PRODUCT_RELEASE_NAME := One_V

# Inherit some common CNA stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common CNA stuff
$(call inherit-product, vendor/cna/config/cdma.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_primoc BUILD_FINGERPRINT=virgin_mobile/htc_primoc/primou:4.1.1/JRO03L/330937:user/release-keys PRIVATE_BUILD_DESC="4.1.1 JRO03L 330937 release-keys"

PRODUCT_NAME := cna_primoc
PRODUCT_DEVICE := primoc

# Common Apps

# Bootanimation
PRODUCT_COPY_FILES += \
   vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Goo.im
PRODUCT_PROPERTY_OVERRIDES += \
ro.goo.developerid=gannon5197 \
ro.goo.rom=cna_$(TARGET_PRODUCT) \
ro.goo.version=3
