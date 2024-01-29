# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/ONDA/octopus-ibt/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_BRAND := ONDA
PRODUCT_NAME := octopus_ibt
PRODUCT_DEVICE := octopus-ibt
PRODUCT_MODEL := V975s Core8
PRODUCT_BOARD := exdroid
PRODUCT_MANUFACTURER := ONDA
