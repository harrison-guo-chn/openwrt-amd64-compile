#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argonne' feeds/luci/collections/luci/Makefile
sed -i 's/root::0:0:99999:7:::/root:$1$kk2v0.7P$7dW0TV2PNTIRYwLVnxMQn/:0:0:99999:7:::' package/base-files/files/etc/shadow
