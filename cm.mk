# Release name
PRODUCT_RELEASE_NAME := ZaTab

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/zatab/full_zatab.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zatab
PRODUCT_NAME := cm_zatab
PRODUCT_BRAND := ZaReason
PRODUCT_MODEL := ZaTab
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=zatab BUILD_FINGERPRINT="zareason/zatab/zatab:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="zatab-user 4.0.4 IMM76I 330937 release-keys"
