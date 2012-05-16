# Release name
PRODUCT_RELEASE_NAME := ZaTab

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

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

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=zatab BUILD_FINGERPRINT="iNet/crane_evb/crane-evb:4.0.3/IML74K/20120330:eng/test-keys" PRIVATE_BUILD_DESC="crane_evb-eng 4.0.3 IML74K 20120330 test-keys"
