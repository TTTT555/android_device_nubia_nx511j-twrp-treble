# Release name
PRODUCT_RELEASE_NAME := NX511J

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx511j
PRODUCT_NAME := omni_nx511j
PRODUCT_BRAND := NUBIA
PRODUCT_MODEL := Z9 mini (TWRP)
PRODUCT_MANUFACTURER := NUBIA

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=NX511J \
    ro.product.device=NX511J \
    ro.product.model=NX511J

ALLOW_MISSING_DEPENDENCIES := true
