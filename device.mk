LOCAL_PATH := device/samsung/gts210veltexx

###########################################################
### FLAT DEVICE TREE
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dtb.img:dt.img

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
    init.qcom.rc

###########################################################
### AUDIO
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

###########################################################
### BLUETOOTH
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/av_performance.conff:system/etc/bluetooth/av_performance.conf \
	$(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
	$(LOCAL_PATH)/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
	$(LOCAL_PATH)/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
	$(LOCAL_PATH)/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf \
	$(LOCAL_PATH)/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf
	
# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts210veltexx/gts210veltexx-vendor.mk)
