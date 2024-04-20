#!/bin/bash

rm -r device/softwinner/common/overlay/packages/apps/Launcher2/res
rm -r device/softwinner/octopus-common/overlay/packages

sudo ln -sf /usr/bin/python2.7 /usr/bin/python
source build/envsetup.sh
lunch aosp_octopus_ibt-userdebug
mm -j$(nproc --all)
