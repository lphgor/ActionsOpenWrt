#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

rm -rf ./package/lean/UnblockNeteaseMusic*
rm -rf ./package/lean/luci-app-unblockmusic
git clone https://github.com/cnsilvan/luci-app-unblockneteasemusic ./package/unblockneteasemusic
sed -i 's/+unzip //g' ./package/unblockneteasemusic/luci-app-unblockneteasemusic/Makefile
#sed -i 's/aa1eb0186206671de9a6b4fa27d933bb306d4e25/1c6951389ed2b4ed3b5a35052ca35a9647ae74d001b0af07180a66aa0f77e816/g' ./package/unblockneteasemusic/UnblockNeteaseMusic/Makefile
git clone https://lphgor:$1@github.com/lphgor/mosquitto.git ./package/mosquitto


