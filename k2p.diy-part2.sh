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
rm -rf ./feeds/helloworld/shadowsocks-rust
sed -i '/NAS/d;s/nas/services/g' ./feeds/luci/applications/luci-app-cifsd/luasrc/controller/cifsd.lua
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF/$1$l1CYLqFu$llSM4AY38sLaTb7gelfl0/g;/nas/d;/admin_status/d;/downloads.openwrt.org/d;/openwrt_release/d;/log-facility/d' ./package/lean/default-settings/files/zzz-default-settings
sed -i "/wgetrc/ised -i '/DISTRIB_DESCRIPTION/ { s/SNAPSHOT/SNAPSHOT($(date +%Y.%m.%d-%H%M%S))/g; }' /etc/openwrt_release" ./package/lean/default-settings/files/zzz-default-settings
echo 0xDEADBEEF > ./feeds/helloworld/luci-app-ssr-plus/root/etc/config/google_fu_mode
sed -i '/DEPENDS:=+kcptun-config/d;s/20210922/20220628/g;s/2021-09-22/2022-06-28/g;s/f6a08f0fe75fa85d15f9c0c28182c69a5ad909229b4c230a8cbe38f91ba2d038/6a63facc902594b4ca5f0456e58196cf7b2a2451594fe2f69b55ac712ceb85e8/g;' ./feeds/packages/net/kcptun/Makefile
sed -i 's/spi-max-frequency = <80000000>/spi-max-frequency = <10000000>/g' ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i '/list listen_https/d' ./package/network/services/uhttpd/files/uhttpd.config
sed -i 's/9625784cf2e4fd9842f1d407681ce4878b5b0dcddbcd31c6135114a30c71e6a8/5de8c8e29aaa3fb9cc6b47bb27299f271354ebb72514e3accadc7d38b5bbaa72/g' ./packages/utils/jq/Makefile
