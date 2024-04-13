#!/bin/sh

git init
git config core.sparseCheckout true
echo "android/" >> .git/info/sparse-checkout
git remote add origin https://github.com/BPI-SINOVOIP/BPI-A83T-Android.git
git fetch origin a13b6beb5828d90daae0ed148a04052125460bd6
git reset --hard FETCH_HEAD
rm -rf .git
cd android
git clone https://github.com/xunmod/android_device_softwinner_octopus-ibt device/softwinner/octopus-ibt --single-branch -b lollipop
git clone https://github.com/xunmod/external_chromium-webview external/chromium-webview --single-branch -b lollipop
