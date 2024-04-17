LOCAL_PATH := $(call my-dir)

#################################################################
include $(CLEAR_VARS)
LOCAL_MODULE := MT
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/preinstall
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := MT2.15.2-target28.apk
include $(BUILD_PREBUILT)
