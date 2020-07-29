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

sed -i 's/^GO_VERSION_PATCH:=4$/GO_VERSION_PATCH:=6/g;s/7011af3bbc2ac108d1b82ea8abb87b2e63f78844f0259be20cde4d42c5c40584/73fc9d781815d411928eccb92bf20d5b4264797be69410eac854babe44c94c09/g' ./feeds/packages/lang/golang/golang/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF/$1$l1CYLqFu$llSM4AY38sLaTb7gelfl0/g;/nas/d;/admin_status/d;/ustclug/d;/openwrt_release/d;/log-facility/d' ./package/lean/default-settings/files/zzz-default-settings
echo 0xDEADBEEF > ./feeds/helloworld/luci-app-ssr-plus/root/etc/config/google_fu_mode
