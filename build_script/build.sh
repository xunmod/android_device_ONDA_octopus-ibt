#!/bin/bash

patch -p1 < android/device/softwinner/octopus-ibt/patches/su.patch
cd android
rm -r device/softwinner/common/overlay/packages/apps/Launcher2
rm -r device/softwinner/octopus-common/overlay/packages/apps/Launcher2

sudo ln -sf /usr/bin/python2.7 /usr/bin/python
source build/envsetup.sh
lunch aosp_octopus_ibt-userdebug
mm -j$(nproc --all)
