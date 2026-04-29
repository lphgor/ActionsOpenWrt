#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

sed -i 's/3.05.661/5.04.874/g; s/202b5eb6d4ecee5444ac5a55fea462ad106ebfb88f51ca8499553db4f701f28f/9350a647872c64cc3025b69ae7181de9736b6073acf4b46cad265ee3dad20974/g' ./packages/net/xfrpc/Makefile
