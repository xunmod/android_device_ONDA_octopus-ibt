DEVICE_PACKAGE_OVERLAYS := \
    device/ONDA/octopus-ibt/overlay \
    $(DEVICE_PACKAGE_OVERLAYS)

PRODUCT_PACKAGES += gatord

PRODUCT_PACKAGES += \
		Launcher2 \
    VideoPlayer \
    Bluetooth

PRODUCT_COPY_FILES += \
    device/ONDA/octopus-ibt/kernel:kernel \
    device/ONDA/octopus-ibt/rootdir/fstab.sun8i:root/fstab.sun8i \
    device/ONDA/octopus-ibt/rootdir/init.sun8i.rc:root/init.sun8i.rc \
    device/ONDA/octopus-ibt/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    device/ONDA/octopus-ibt/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
    device/ONDA/octopus-ibt/verity/rsa_key/verity_key:root/verity_key \
    device/ONDA/octopus-ibt/modules/modules/nand.ko:root/nand.ko \
    device/ONDA/octopus-ibt/modules/modules/sunxi_tr.ko:root/sunxi_tr.ko \
    device/ONDA/octopus-ibt/modules/modules/disp.ko:root/disp.ko \
    device/ONDA/octopus-ibt/modules/modules/sw-device.ko:obj/sw-device.ko \
    device/ONDA/octopus-ibt/modules/modules/gt9xxf_ts.ko:obj/gt9xxf_ts.ko

PRODUCT_COPY_FILES += \
    device/ONDA/octopus-ibt/configs/camera.cfg:system/etc/camera.cfg \
    device/ONDA/octopus-ibt/configs/cfg-Gallery2.xml:system/etc/cfg-Gallery2.xml \
    device/ONDA/octopus-ibt/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/ONDA/octopus-ibt/configs/sunxi-ir.kl:system/usr/keylayout/sunxi-ir.kl \
    device/ONDA/octopus-ibt/configs/tp.idc:system/usr/idc/tp.idc \
    device/ONDA/octopus-ibt/configs/gsensor.cfg:system/usr/gsensor.cfg \
    device/ONDA/octopus-ibt/configs/sunxi-keyboard.kl:system/usr/keylayout/sunxi-keyboard.kl \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml


PRODUCT_COPY_FILES += \
    device/ONDA/octopus-ibt/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

PRODUCT_COPY_FILES += \
    device/ONDA/octopus-ibt/egl/pvrsrvctl:system/vendor/bin/pvrsrvctl \
    device/ONDA/octopus-ibt/egl/libusc.so:system/vendor/lib/libusc.so \
    device/ONDA/octopus-ibt/egl/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    device/ONDA/octopus-ibt/egl/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    device/ONDA/octopus-ibt/egl/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    device/ONDA/octopus-ibt/egl/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    device/ONDA/octopus-ibt/egl/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    device/ONDA/octopus-ibt/egl/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    device/ONDA/octopus-ibt/egl/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    device/ONDA/octopus-ibt/egl/libEGL_POWERVR_SGX544_115.so:system/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so \
    device/ONDA/octopus-ibt/egl/libGLESv1_CM_POWERVR_SGX544_115.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so \
    device/ONDA/octopus-ibt/egl/libGLESv2_POWERVR_SGX544_115.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so \
    device/ONDA/octopus-ibt/egl/gralloc.sun8i.so:system/vendor/lib/hw/gralloc.sun8i.so \
    device/ONDA/octopus-ibt/egl/powervr.ini:system/etc/powervr.ini

PRODUCT_COPY_FILES += \
    device/ONDA/octopus-ibt/rootdir/initlogo.rle:root/initlogo.rle \
    device/ONDA/octopus-ibt/media/bootlogo.bmp:system/media/bootlogo.bmp \
    device/ONDA/octopus-ibt/media/bootanimation.zip:system/media/bootanimation.zip \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Low mem(memory <= 512M) device should not copy android.software.managed_users.xml
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.managed_users.xml:system/etc/permissions/android.software.managed_users.xml

#PRODUCT_COPY_FILES += \
#  device/ONDA/octopus-ibt/media/bootanimation.zip:system/media/bootanimation.zip \

# Camera config for camera detector
PRODUCT_COPY_FILES += \
    device/ONDA/octopus-ibt/hawkview/sensor_list_cfg.ini:system/etc/hawkview/sensor_list_cfg.ini

# Radio Packages and Configuration Flie
$(call inherit-product, device/softwinner/common/rild/radio_common.mk)
#$(call inherit-product, device/softwinner/common/ril_modem/huawei/mu509/huawei_mu509.mk)
#$(call inherit-product, device/softwinner/common/ril_modem/Oviphone/em55/oviphone_em55.mk)

## camera config for isp
PRODUCT_COPY_FILES += \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/isp_3a_param.ini:system/etc/hawkview/ov8858_4lane/isp_3a_param.ini \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/isp_iso_param.ini:system/etc/hawkview/ov8858_4lane/isp_iso_param.ini \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/isp_test_param.ini:system/etc/hawkview/ov8858_4lane/isp_test_param.ini \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/isp_tuning_param.ini:system/etc/hawkview/ov8858_4lane/isp_tuning_param.ini \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/bin/gamma_tbl.bin:system/etc/hawkview/ov8858_4lane/bin/gamma_tbl.bin \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/bin/hdr_tbl.bin:system/etc/hawkview/ov8858_4lane/bin/hdr_tbl.bin \
    device/softwinner/octopus-common/hawkview/8M/ov8858_4lane/bin/lsc_tbl.bin:system/etc/hawkview/ov8858_4lane/bin/lsc_tbl.bin


RODUCT_PACKAGES += Bluetooth
#rtl8723bs bt fw and config
$(call inherit-product, hardware/realtek/bluetooth/rtl8723bs/firmware/rtlbtfw_cfg.mk)

# sensor    
PRODUCT_COPY_FILES += \
  device/ONDA/octopus-ibt/sensor.sh:system/bin/sensor.sh
  
# gps
$(call inherit-product, device/ONDA/octopus-ibt/gps/gps.mk)

# usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.sys.mutedrm=false \
    rw.logger=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.firmware=v3.0rc1

PRODUCT_PROPERTY_OVERRIDES += \
  ro.sf.lcd_density=120 \
  ro.sf.rotation=270 \
  ro.inet.wlan.type=8723bs_vq0 \
  ro.product.8723b_bt.used=true \

# function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.bootfast=true \
#    ro.dmic.used=true

PRODUCT_LOCALES := zh_CN zh_TW en_US

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
