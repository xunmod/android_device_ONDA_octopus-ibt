# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

include device/softwinner/octopus-common/BoardConfigCommon.mk

# image related
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

TARGET_PREBUILT_KERNEL := device/ONDA/octopus-ibt/kernel
INSTALLED_KERNEL_TARGET := $(TARGET_PREBUILT_KERNEL)
BOARD_KERNEL_CMDLINE := 
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16384000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 32768000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000
BOARD_CACHEIMAGE_PARTITION_SIZE := 786432000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072


# wifi and bt configuration

# 1. Wifi Configuration
BOARD_WIFI_VENDOR := realtek
#BOARD_WIFI_VENDOR := broadcom

# 1.1 broadcom wifi support
ifeq ($(BOARD_WIFI_VENDOR), broadcom)
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    WPA_SUPPLICANT_VERSION      := VER_0_8_X
    BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
    BOARD_HOSTAPD_DRIVER        := NL80211
    BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
    BOARD_WLAN_DEVICE           := bcmdhd
    WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"

    BOARD_USR_WIFI := gb9663
    include hardware/broadcom/wlan/bcmdhd/firmware/$(BOARD_USR_WIFI)/device-bcm.mk

endif

# 1.1  realtek wifi configuration
BOARD_WIFI_VENDOR := realtek
ifeq ($(BOARD_WIFI_VENDOR), realtek)
    WPA_SUPPLICANT_VERSION := VER_0_8_X
    BOARD_WPA_SUPPLICANT_DRIVER := NL80211
    BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
    BOARD_HOSTAPD_DRIVER        := NL80211
    BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl

    #BOARD_USR_WIFI := rtl8189es
    #BOARD_WLAN_DEVICE := rtl8189es

    #SW_BOARD_USR_WIFI := rtl8723au
    #BOARD_WLAN_DEVICE := rtl8723au
    
    BOARD_USR_WIFI := rtl8723bs
    BOARD_WLAN_DEVICE := rtl8723bs
endif

# 2. Bluetooth Configuration
# make sure BOARD_HAVE_BLUETOOTH is true for every bt vendor
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_BLUETOOTH_RTK := true
BLUETOOTH_HCI_USE_RTK_H5 := true
BOARD_HAVE_BLUETOOTH_NAME := rtl8723bs
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/ONDA/octopus-ibt/bluetooth/

#gsensor & Gyr sensor
#SW_BOARD_USES_SENSORS_TYPE = lsm9ds0

# boostup code will on command to set CPU roomage and DDR freq
# default enable
TARGET_USE_BOOSTUP_OPZ := true

# Screen
TARGET_SCREEN_HEIGHT := 1280	
TARGET_SCREEN_WIDTH := 720

# TWRP
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab

TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := landscape_hdpi
LOCAL_RESOLUTION := 1280x720
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 720
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_DEFAULT_EXTERNAL_STORAGE := false
TW_FORCE_USE_BUSYBOX := true
TW_INCLUDE_FB2PNG := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_INCLUDE_NTFS_3G := true
TW_DEFAULT_LANGUAGE := zh-CN
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TWHAVE_SELINUX := true
# TW_NEW_ION_HEAP := true
