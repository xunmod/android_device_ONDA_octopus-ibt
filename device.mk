DEVICE_PACKAGE_OVERLAYS := \
    device/softwinner/octopus-ibt/overlay \
    $(DEVICE_PACKAGE_OVERLAYS)

PRODUCT_PACKAGES += \
		su \
		gatord \
		sensors.exdroid

PRODUCT_PACKAGES += \
    VideoPlayer \
		MaterialFiles \
		Terminal

PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/kernel:kernel \
    device/softwinner/octopus-ibt/rootdir/fstab.sun8i:root/fstab.sun8i \
    device/softwinner/octopus-ibt/rootdir/init.sun8i.rc:root/init.sun8i.rc \
    device/softwinner/octopus-ibt/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    device/softwinner/octopus-ibt/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
    device/softwinner/octopus-ibt/verity/rsa_key/verity_key:root/verity_key \
    device/softwinner/octopus-ibt/modules/modules/nand.ko:root/nand.ko \
    device/softwinner/octopus-ibt/modules/modules/sunxi_tr.ko:root/sunxi_tr.ko \
    device/softwinner/octopus-ibt/modules/modules/disp.ko:root/disp.ko \
    device/softwinner/octopus-ibt/modules/modules/sw-device.ko:obj/sw-device.ko \
    device/softwinner/octopus-ibt/modules/modules/gt9xxf_ts.ko:obj/gt9xxf_ts.ko

PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/configs/camera.cfg:system/etc/camera.cfg \
    device/softwinner/octopus-ibt/configs/wifi_efuse_8723bs_vq0.map:system/etc/wifi/wifi_efuse_8723bs_vq0.map \
    device/softwinner/octopus-ibt/configs/cfg-Gallery2.xml:system/etc/cfg-Gallery2.xml \
    device/softwinner/octopus-ibt/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/softwinner/octopus-ibt/configs/tp.idc:system/usr/idc/tp.idc \
    device/softwinner/octopus-ibt/configs/tp.idc:system/usr/idc/gt9xxf_ts.idc \
    device/softwinner/octopus-ibt/configs/gsensor.cfg:system/usr/gsensor.cfg \
    device/softwinner/octopus-ibt/configs/sunxi-keyboard.kl:system/usr/keylayout/sunxi-keyboard.kl \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml


PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/rootdir/initlogo.rle:root/initlogo.rle \
    device/softwinner/octopus-ibt/media/bootlogo.bmp:system/media/bootlogo.bmp \
    device/softwinner/octopus-ibt/media/bootanimation.zip:system/media/bootanimation.zip \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Low mem(memory <= 512M) device should not copy android.software.managed_users.xml
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.managed_users.xml:system/etc/permissions/android.software.managed_users.xml

# Camera config for camera detector
PRODUCT_COPY_FILES += \
    device/softwinner/octopus-ibt/hawkview/sensor_list_cfg.ini:system/etc/hawkview/sensor_list_cfg.ini

# Radio Packages and Configuration Flie
$(call inherit-product, device/softwinner/common/rild/radio_common.mk)
#$(call inherit-product, device/softwinner/common/ril_modem/huawei/mu509/huawei_mu509.mk)
#$(call inherit-product, device/softwinner/common/ril_modem/Oviphone/em55/oviphone_em55.mk)

PRODUCT_PACKAGES += Bluetooth
#rtl8723bs bt fw and config
$(call inherit-product, hardware/realtek/bluetooth/rtl8723bs/firmware/rtlbtfw_cfg.mk)

# sensor    
PRODUCT_COPY_FILES += \
  device/softwinner/octopus-ibt/sensor.sh:system/bin/sensor.sh
  
# usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.sys.mutedrm=false \
    rw.logger=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.firmware=v3.0rc1

PRODUCT_PROPERTY_OVERRIDES += \
  ro.sf.lcd_density=160 \
  ro.sf.rotation=270 \
  ro.product.8723b_bt.used=true

# function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.bootfast=true

PRODUCT_LOCALES := zh_CN zh_TW en_US

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
