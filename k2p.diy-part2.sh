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

sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF/$1$l1CYLqFu$llSM4AY38sLaTb7gelfl0/g;/nas/d;/admin_status/d;/downloads.openwrt.org/d;/openwrt_release/d;/log-facility/d' ./package/lean/default-settings/files/zzz-default-settings
sed -i '/wgetrc/ised -i "/DISTRIB_DESCRIPTION/ { s/SNAPSHOT/SNAPSHOT($(date +%Y.%m.%d))/g; }" /etc/openwrt_release' ./package/lean/default-settings/files/zzz-default-settings
echo 0xDEADBEEF > ./feeds/helloworld/luci-app-ssr-plus/root/etc/config/google_fu_mode
sed -i '/DEPENDS:=+kcptun-config/d' ./feeds/packages/net/kcptun/Makefile
sed -i 's/spi-max-frequency = <80000000>/spi-max-frequency = <10000000>/g' ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i '/list listen_https/d' ./package/network/services/uhttpd/files/uhttpd.config

