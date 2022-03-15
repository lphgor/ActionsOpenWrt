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
rm -rf ./feeds/helloworld/shadowsocks-rust
sed -i '/NAS/d;s/nas/services/g' ./feeds/luci/applications/luci-app-cifsd/luasrc/controller/cifsd.lua
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF/$1$l1CYLqFu$llSM4AY38sLaTb7gelfl0/g;/nas/d;/admin_status/d;/downloads.openwrt.org/d;/openwrt_release/d;/log-facility/d' ./package/lean/default-settings/files/zzz-default-settings
sed -i '/wgetrc/ised -i "/DISTRIB_DESCRIPTION/ { s/SNAPSHOT/SNAPSHOT($(date +%Y.%m.%d-%H%M%S))/g; }" /etc/openwrt_release' ./package/lean/default-settings/files/zzz-default-settings
echo 0xDEADBEEF > ./feeds/helloworld/luci-app-ssr-plus/root/etc/config/google_fu_mode
sed -i '/DEPENDS:=+kcptun-config/d;s/20210624/20210922/g;s/2021-06-24/2021-09-22/g;s/3f39eb2e6ee597751888b710afc83147b429c232591e91bc97565b32895f33a8/f6a08f0fe75fa85d15f9c0c28182c69a5ad909229b4c230a8cbe38f91ba2d038/g;' ./feeds/packages/net/kcptun/Makefile
sed -i 's/spi-max-frequency = <80000000>/spi-max-frequency = <10000000>/g' ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i '/list listen_https/d' ./package/network/services/uhttpd/files/uhttpd.config

