# Release name
PRODUCT_RELEASE_NAME := Iproj

# Custom apns must come before cdma.mk is included
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml

## Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/cdma.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/i_vzw/full_i_vzw.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i_vzw
PRODUCT_NAME := aokp_i_vzw
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := VS920 4G
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone
