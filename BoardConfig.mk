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

INSTALLED_KERNEL_TARGET := kernel
BOARD_KERNEL_CMDLINE := 
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 # 1024M
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 # 16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 # 32M
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_CACHEIMAGE_PARTITION_SIZE := 805306368 # 768M
BOARD_EGL_CFG := device/ONDA/octopus-ibt/egl/egl.cfg

# recovery stuff
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_UI_LIB := librecovery_ui_octopus_ibt
TARGET_RECOVERY_FSTAB := device/ONDA/octopus-ibt/recovery/recovery.fstab
SW_BOARD_TOUCH_RECOVERY := true

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

# gsensor & Gyr sensor
SW_BOARD_USES_SENSORS_TYPE = lsm9ds0

# boostup code will on command to set CPU roomage and DDR freq
# default enable
TARGET_USE_BOOSTUP_OPZ := true
