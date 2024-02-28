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
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci-light/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci-nginx/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci-ssl-nginx/Makefile
sed -i '/list listen_https/d' ./package/network/services/uhttpd/files/uhttpd.config
sed -i '/log-facility/d' ./package/emortal/default-settings/files/99-default-settings
sed -i "/exit 0/ised -i '/DISTRIB_DESCRIPTION/ { s/SNAPSHOT/SNAPSHOT($(date +%Y%m%d%H%M%S))/g; }' /etc/openwrt_release" ./package/emortal/default-settings/files/99-default-settings
