# Copyright 2016 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests

LOCAL_SDK_VERSION := system_current
media_framework_app_base := frameworks/base/media/tests/MediaFrameworkTest/src/com/android/mediaframeworktest
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_JAVA_LIBRARIES := android.test.runner
LOCAL_STATIC_JAVA_LIBRARIES := android-support-test \
    app-helpers \
    launcher-helper-lib \
    platform-test-annotations \
    ub-uiautomator

LOCAL_PACKAGE_NAME := AndroidBvtTests
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

include \
    $(LOCAL_PATH)/apps/Android.mk \
    $(LOCAL_PATH)/hermetic/Android.mk
