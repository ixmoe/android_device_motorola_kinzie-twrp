#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_PATH := device/motorola/kinzie

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := kinzie

# Platform
TARGET_BOARD_PLATFORM := msm8994
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_USES_64_BIT_BINDER := true
TARGET_NO_RADIOIMAGE := true

# Architecture

TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_SMP := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57
TARGET_2ND_ARCH_VARIANT := armv7-a-neon

# CPU
ENABLE_CPUSETS := true
ENABLE_SCHED_BOOST := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Prebuilts
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/zImage
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

# Graphics
TARGET_USES_ION := true
# Headers
#TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=none androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlyprintk=msm_hsl_uart,0xf991e000 utags.blkdev=/dev/block/bootdevice/by-name/utags utags.backup=/dev/block/bootdevice/by-name/utagsBackup boot_cpus=0-5 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(DEVICE_PATH)/dt.img

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 42024960
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312
BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Disable secure discard because it's SLOW
BOARD_SUPPRESS_SECURE_ERASE := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MOTOROLA_LOG := true

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_NEW_ION_HEAP := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 80
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_INCLUDE_NTFS_3G := true
TW_NO_USB_STORAGE := true
#TW_USE_TOOLBOX    := true

# Asian region languages
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN

# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_CRYPTFS_HW_PATH := $(DEVICE_PATH)/cryptfs_hw

# Debug flags
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true

