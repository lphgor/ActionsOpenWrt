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

sed -i 's/^GO_VERSION_MAJOR_MINOR:=1.14$/GO_VERSION_MAJOR_MINOR:=1.14/g;s/^GO_VERSION_PATCH:=4$/GO_VERSION_PATCH:=9/g;s/7011af3bbc2ac108d1b82ea8abb87b2e63f78844f0259be20cde4d42c5c40584/c687c848cc09bcabf2b5e534c3fc4259abebbfc9014dd05a1a2dc6106f404554/g' ./feeds/packages/lang/golang/golang/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
# sed -i 's/20200701/20200930/g;s/d5b2d212c6806f1c4eba5fbce8797734eaa8ae0f8cdd90dd06d0844392888ff0/90d0851e96ff723d4bcd7fd00795e926418ce5cf17c841e1e0185b0770b84874/g' ./package/lean/kcptun/Makefile
# sed -i 's/GO_PKG_LDFLAGS:=/GO_PKG_MOD:=vendor\nGO_PKG_LDFLAGS:=/' ./package/lean/kcptun/Makefile
# sed -i 's/$(if $(GO_PKG_GCFLAGS),-gcflags/$(if $(GO_PKG_MOD),-mod=$(GO_PKG_MOD)) \\\n\t$(if $(GO_PKG_GCFLAGS),-gcflags/' ./feeds/packages/lang/golang/golang-package.mk
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF/$1$l1CYLqFu$llSM4AY38sLaTb7gelfl0/g;/nas/d;/admin_status/d;/ustclug/d;/openwrt_release/d;/log-facility/d' ./package/lean/default-settings/files/zzz-default-settings
echo 0xDEADBEEF > ./feeds/helloworld/luci-app-ssr-plus/root/etc/config/google_fu_mode
