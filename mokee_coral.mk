# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

-include device/google/coral/coral/device-mokee.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mokee_coral
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=coral \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.211001.001/7641976:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
