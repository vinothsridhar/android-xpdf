LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := xpdf

LOCAL_SRC_FILES := \
                   Annot.cc \
                   Array.cc \
                   BuiltinFont.cc \
                   BuiltinFontTables.cc \
                   CMap.cc \
                   Catalog.cc \
                   CharCodeToUnicode.cc \
                   CoreOutputDev.cc \
                   Decrypt.cc \
                   Dict.cc \
                   Error.cc \
                   FontEncodingTables.cc \
                   Function.cc \
                   Gfx.cc \
                   GfxFont.cc \
                   GfxState.cc \
                   GlobalParams.cc \
                   ImageOutputDev.cc \
                   JArithmeticDecoder.cc \
                   JBIG2Stream.cc \
                   JPXStream.cc \
                   Lexer.cc \
                   Link.cc \
                   NameToCharCode.cc \
                   Object.cc \
                   Outline.cc \
                   OutputDev.cc \
                   PDFCore.cc \
                   PDFDoc.cc \
                   PDFDocEncoding.cc \
                   PSOutputDev.cc \
                   PSTokenizer.cc \
                   Page.cc \
                   Parser.cc \
                   PreScanOutputDev.cc \
                   SecurityHandler.cc \
                   SplashOutputDev.cc \
                   Stream.cc \
                   TextOutputDev.cc \
                   UnicodeMap.cc \
                   UnicodeTypeTable.cc \
                   XpdfPluginAPI.cc \
                   XRef.cc \

LOCAL_C_INCLUDES += \
                    $(LOCAL_PATH) \
                    $(CONF_PATH) \
                    $(GOO_PATH) \
                    $(FOFI_PATH) \
                    $(SPLASH_PATH) \

LOCAL_C_FLAGS += \
                 -include -Wno-write-strings \

LOCAL_SHARED_LIBRARIES:= goo fofi splash

include $(BUILD_SHARED_LIBRARY)