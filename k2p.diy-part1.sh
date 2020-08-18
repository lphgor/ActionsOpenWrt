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
git clone https://lphgor:${{ secrets.token }}@github.com/lphgor/mosquitto.git ./package/mosquitto
