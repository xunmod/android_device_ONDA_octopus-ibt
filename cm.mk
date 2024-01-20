# Inherit device configuration
$(call inherit-product, device/ONDA/otcopus-ibt/full_octopus-ibt.mk)
# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_octopus_ibt
PRODUCT_RELEASE_NAME := octopus-ibt
