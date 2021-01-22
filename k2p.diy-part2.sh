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
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

#sed -i 's/^GO_VERSION_MAJOR_MINOR:=1.14$/GO_VERSION_MAJOR_MINOR:=1.14/g;s/^GO_VERSION_PATCH:=4$/GO_VERSION_PATCH:=9/g;s/7011af3bbc2ac108d1b82ea8abb87b2e63f78844f0259be20cde4d42c5c40584/c687c848cc09bcabf2b5e534c3fc4259abebbfc9014dd05a1a2dc6106f404554/g' ./feeds/packages/lang/golang/golang/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
#sed -i 's/20201010/20201010/g;s/afab2a087b787e59e129c7d4fbc578e1131d264c0da1ce23cd1282321fc3c189/afab2a087b787e59e129c7d4fbc578e1131d264c0da1ce23cd1282321fc3c189/g' ./package/lean/kcptun/Makefile
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF/$1$l1CYLqFu$llSM4AY38sLaTb7gelfl0/g;/nas/d;/admin_status/d;/ustclug/d;/openwrt_release/d;/log-facility/d' ./package/lean/default-settings/files/zzz-default-settings
sed -i "s#exit 0#sed -i '/helloworld/d' /etc/opkg/distfeeds.conf\nexit 0#g" ./package/lean/default-settings/files/zzz-default-settings
echo 0xDEADBEEF > ./feeds/helloworld/luci-app-ssr-plus/root/etc/config/google_fu_mode
