# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/ONDA/octopus-ibt/device.mk)

PRODUCT_BRAND := ONDA
PRODUCT_NAME := full_octopus_ibt
PRODUCT_DEVICE := octopus-ibt
PRODUCT_MODEL := V975s Core8
PRODUCT_BOARD := exdroid
PRODUCT_MANUFACTURER := ONDA
