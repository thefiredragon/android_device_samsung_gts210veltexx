# Inherit device configuration
$(call inherit-product, device/samsung/gts210veltexx/device.mk)
$(call inherit-product, device/samsung/gts2ve-common/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_gts210velte
PRODUCT_DEVICE := gts210veltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T819
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts210veltexx
