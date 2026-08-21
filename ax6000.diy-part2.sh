#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' ./package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci-light/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci-nginx/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci-ssl-nginx/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci-layer2/Makefile
sed -i '/list listen_https/d' ./package/network/services/uhttpd/files/uhttpd.config
sed -i '/log-facility/d' ./package/emortal/default-settings/files/99-default-settings
sed -i "/exit 0/ised -i '/DISTRIB_DESCRIPTION/ { s/SNAPSHOT/SNAPSHOT($(date +%Y%m%d%H%M%S))/g; }' /etc/openwrt_release" ./package/emortal/default-settings/files/99-default-settings
sed -i "/exit 0/ised -i '/OPENWRT_RELEASE/ { s/SNAPSHOT/SNAPSHOT($(date +%Y%m%d%H%M%S))/g; }' /usr/lib/os-release" ./package/emortal/default-settings/files/99-default-settings
sed -i 's/5.06.909/5.09.976/g; s/7742bedbe929f5bfb386af2025de744aa38bc6f531e1f86a1fbb7318e3ec8f72/C2FDEC14510CF2F25CA086A35EB7657695467EED908A710D302E6B9FC77D1954/g' ./feeds/packages/net/xfrpc/Makefile
rm -rf rm -rf ./feeds/luci/applications/luci-app-xfrpc
git clone https://github.com/liudf0716/luci-app-xfrpc ./feeds/luci/applications/luci-app-xfrpc
