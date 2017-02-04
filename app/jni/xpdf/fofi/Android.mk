LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := fofi

LOCAL_SRC_FILES := FoFiBase.cc \
                   FoFiEncodings.cc \
                   FoFiTrueType.cc \
                   FoFiType1.cc \
                   FoFiType1C.cc

LOCAL_C_INCLUDES += \
                    $(LOCAL_PATH) \
                    $(CONF_PATH) \
                    $(GOO_PATH) \

LOCAL_C_FLAGS += \
                 -include -Wno-write-strings \

LOCAL_SHARED_LIBRARIES:= goo

include $(BUILD_SHARED_LIBRARY)