LOCAL_PATH := device/samsung/gts210veltexx

# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --dt device/samsung/gts210veltexx/dt.img

# Kernel
TARGET_KERNEL_CONFIG := cm_qcom-gts210velte_defconfig

# RIL
BOARD_MODEM_TYPE := msm8976
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_NEEDS_VIDEO_CALL_FIELD := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210velte,gts210veltexx

# Inherit common board flags
include device/samsung/gts2ve-common/BoardConfigCommon.mk
