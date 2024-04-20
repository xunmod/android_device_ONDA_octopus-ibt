#!/bin/sh

sudo ln -sf /usr/local/bin/python3.8 /usr/bin/python
repo init --depth=1 -u https://github.com/xunmod/android_manifest -b a64
repo sync -c -f --no-tags --no-clone-bundle -j$(nproc --all)
rm -r device/softwinner/octopus-ibt
git clone --single-branch -b lollipop --depth 1 https://github.com/xunmod/android_device_softwinner_octopus-ibt device/softwinner/octopus-ibt
git clone --single-branch -b lollipop --depth 1 https://github.com/xunmod/external_chromium-webview external/chromium-webview
rm -rf .repo/project-objects
