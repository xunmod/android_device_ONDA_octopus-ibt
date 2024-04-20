$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, device/softwinner/octopus-common/octopus-common.mk)
$(call inherit-product-if-exists, device/softwinner/octopus-ibt/modules/modules.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/octopus-ibt/overlay \
                           $(DEVICE_PACKAGE_OVERLAYS)

PRODUCT_PACKAGES += \
    VideoPlayer \
    Bluetooth \
    Launcher3
#   PartnerChromeCustomizationsProvider

PRODUCT_PACKAGES += \
    auto_detect

# dm-verity relative
$(call inherit-product, build/target/product/verity.mk)
# PRODUCT_SUPPORTS_BOOT_SIGNER must be false,otherwise error will be find when boota check boot partition
PRODUCT_SUPPORTS_BOOT_SIGNER := false
#PRODUCT_SUPPORTS_VERITY_FEC := false
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/by-name/system

# copy init.xx.rc file for realtek wifi/bt module.
PRODUCT_COPY_FILES += \
    device/softwinner/common/init.wireless.realtek.rc:root/init.wireless.realtek.rc

PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/kernel:kernel \
    device/softwinner/octopus-ibt/fstab.sun8iw6p1:root/fstab.sun8iw6p1 \
    device/softwinner/octopus-ibt/init.device.rc:root/init.device.rc \
    device/softwinner/octopus-ibt/modules/modules/nand.ko:root/nand.ko \
    device/softwinner/octopus-ibt/modules/modules/disp.ko:root/disp.ko \
    device/softwinner/octopus-ibt/modules/modules/auto_detect.ko:recovery/root/auto_detect.ko \
    device/softwinner/octopus-ibt/modules/modules/gt9xxf_ts.ko:recovery/root/gt9xxf_ts.ko \

PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/configs/camera.cfg:system/etc/camera.cfg \
    device/softwinner/octopus-ibt/configs/cfg-Gallery2.xml:system/etc/cfg-Gallery2.xml \
    device/softwinner/octopus-ibt/configs/gsensor.cfg:system/usr/gsensor.cfg \
    device/softwinner/octopus-ibt/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/softwinner/octopus-ibt/configs/sunxi-keyboard.kl:system/usr/keylayout/sunxi-keyboard.kl \
    device/softwinner/octopus-ibt/configs/tp.idc:system/usr/idc/tp.idc \
    device/softwinner/octopus-ibt/configs/wifi_efuse_8723bs-vq0.map:system/etc/wifi/wifi_efuse_8723bs-vq0.map

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/etc/permissions/android.software.verified_boot.xml


PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml   \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.managed_users.xml:system/etc/permissions/android.software.managed_users.xml

PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/media/bootanimation.zip:system/media/bootanimation.zip \
    #device/softwinner/octopus-ibt/media/audio_conf.txt:system/media/audio_conf.txt \
    #device/softwinner/octopus-ibt/media/boot.wav:system/media/boot.wav

PRODUCT_PROPERTY_OVERRIDES += \
   ro.frp.pst=/dev/block/by-name/frp

# usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    ro.adb.secure=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=25

PRODUCT_PROPERTY_OVERRIDES += \
    pm.dexopt.boot=verify-at-runtime \
    pm.dexopt.install=speed \
    ro.zygote.disable_gl_preload=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

#scense control
PRODUCT_PROPERTY_OVERRIDES += \
    sys.p_home=true \
    sys.p_normal=true \
    sys.p_music=true


# function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.spk_dul.used=true \
    ro.dmic.used=false

PRODUCT_AAPT_CONFIG := ldpi mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := hdpi mdpi ldpi
PRODUCT_CHARACTERISTICS := tablet

# stoarge
PRODUCT_PROPERTY_OVERRIDES += \
    persist.fw.force_adoptable=true

# for ota
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.version.ota=7.0.0 \
    ro.sys.ota.license=1a2fafe7456caca93ab41e3eea0de13076ff0af5ae83605a084ede7ea3e720365d6bc62bfd984fbd

$(call inherit-product-if-exists, vendor/google/products/gms-mandatory.mk)

# Radio Packages and Configuration Flie
$(call inherit-product, vendor/aw/public/prebuild/lib/librild/radio_common.mk)

PRODUCT_BRAND := ONDA
PRODUCT_NAME := octopus_ibt
PRODUCT_DEVICE := octopus-ibt
# PRODUCT_BOARD must equals the board name in kernel
PRODUCT_BOARD := f1
PRODUCT_MODEL := V975s Core8
PRODUCT_MANUFACTURER := ONDA

