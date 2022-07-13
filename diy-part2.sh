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

# Replace luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash feeds/luci/applications/luci-app-openclash

# Add aliyundrive-fuse
svn export https://github.com/messense/aliyundrive-fuse/trunk/openwrt package/custom/aliyundrive-fuse

# Replace luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-dockerman
svn export https://github.com/lxl6125/luci-app-dockerman/branches/lisaac/applications/luci-app-dockerman feeds/luci/applications/luci-app-dockerman

