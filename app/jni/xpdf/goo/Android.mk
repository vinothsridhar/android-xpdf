LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := goo
LOCAL_SRC_FILES := \
                   GHash.cc \
                   GList.cc \
                   GString.cc \
                   gmem.cc \
                   gmempp.cc \
                   gfile.cc \
                   FixedPoint.cc \
                   parseargs.c

LOCAL_C_INCLUDES += \
                    $(LOCAL_PATH) \
                    $(CONF_PATH) \

LOCAL_C_FLAGS += \
                 -include -Wno-write-strings \

include $(BUILD_SHARED_LIBRARY)