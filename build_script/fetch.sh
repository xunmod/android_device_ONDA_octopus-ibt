#!/bin/sh

sudo ln -sf /usr/local/bin/python3.8 /usr/bin/python
repo init --depth=1 -u https://github.com/xunmod/android_manifest -b a64
repo sync -c -f --no-tags --no-clone-bundle -j$(nproc --all)
git clone --single-branch -b lollipop --depth 1 https://github.com/xunmod/android_device_ONDA_octopus-ibt device/ONDA/octopus-ibt
git clone --single-branch -b lollipop --depth 1 https://github.com/xunmod/external_chromium-webview external/chromium-webview
rm -rf .repo/project-objects
rm -r device/softwinner/octopus-ibt
rm -r device/softwinner/zzzzz-chiphd
