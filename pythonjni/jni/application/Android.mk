LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := application

LOCAL_C_INCLUDES := 

#Change C++ file extension as appropriate
LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := 
LOCAL_SRC_FILES += com_iteye_weimingtom_pythonjni_PythonJNI.c

#LOCAL_STATIC_LIBRARIES := ruby sge sdl_mixer sdl_image sdl_ttf sdl
# LOCAL_SHARED_LIBRARIES := sge sdl_mixer sdl_image sdl_ttf sdl
# sdl_mixer sdl_image sdl_ttf lua bz2 mad tremor
LOCAL_STATIC_LIBRARIES := python222

LOCAL_LDLIBS := -lGLESv1_CM -ldl -llog -lz

include $(BUILD_SHARED_LIBRARY)
