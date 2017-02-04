LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := splash
LOCAL_SRC_FILES := Splash.cc \
                   SplashBitmap.cc \
                   SplashClip.cc \
                   SplashFTFont.cc \
                   SplashFTFontEngine.cc \
                   SplashFTFontFile.cc \
                   SplashFont.cc \
                   SplashFontEngine.cc \
                   SplashFontFile.cc \
                   SplashFontFileID.cc \
                   SplashPath.cc \
                   SplashPattern.cc \
                   SplashScreen.cc \
                   SplashState.cc \
                   SplashT1Font.cc \
                   SplashT1FontEngine.cc \
                   SplashT1FontFile.cc \
                   SplashXPath.cc \
                   SplashXPathScanner.cc

LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH) \
                    $(CONF_PATH) \
                    $(GOO_PATH) \
                    $(FOFI_PATH) \

LOCAL_C_FLAGS += \
                 -include -Wno-write-strings \

LOCAL_SHARED_LIBRARIES:= goo fofi

include $(BUILD_SHARED_LIBRARY)