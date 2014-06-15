ifeq (psd_umts_spyder,$(TARGET_PRODUCT))

include vendor/psd/configs/psd_modular.mk

# Include Paranoid SaberDroid common configuration
include vendor/psd/main.mk

# Call pa device
$(call inherit-product, vendor/pa/products/pa_umts_spyder.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/umts_spyder/full_umts_spyder.mk)

# Override AOSP build properties
PRODUCT_NAME := psd_umts_spyder
PRODUCT_BRAND := RTGB
PRODUCT_DEVICE := umts_spyder
PRODUCT_MODEL := XT910
PRODUCT_MANUFACTURER := MOTO
PRODUCT_RELEASE_NAME := MOTOROLA RAZR
PRODUCT_SFX := umts

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

endif