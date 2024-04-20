LOCAL_PATH := $(call my-dir)

#################################################################
include $(CLEAR_VARS)
LOCAL_MODULE := MaterialFiles
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/preinstall
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := me.zhanghai.android.files_36.apk
include $(BUILD_PREBUILT)
