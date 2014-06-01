ifneq ($(filter d950 d959 d958 ls955 f340,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9320; \
        ln -sf /data/misc/audio/wcd9320_anc.bin \
        $(TARGET_OUT_ETC)/firmware/wcd9320/wcd9320_anc.bin)

endif
