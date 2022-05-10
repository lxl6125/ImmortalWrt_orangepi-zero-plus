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

# Use Lean's qBittorrent
rm -rf feeds/luci/applications/luci-app-qbittorrent feeds/packages/net/qBittorrent-Enhanced-Edition feeds/packages/libs/qt5
svn export https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-qbittorrent feeds/luci/applications/luci-app-qbittorrent
svn export https://github.com/coolsnowwolf/packages/trunk/net/qBittorrent-static package/custom/qBittorrent-static
svn export https://github.com/coolsnowwolf/packages/trunk/net/qBittorrent package/custom/qBittorrent
svn export https://github.com/coolsnowwolf/packages/trunk/libs/qtbase package/custom/qtbase
svn export https://github.com/coolsnowwolf/packages/trunk/libs/qttools package/custom/qttools
svn export https://github.com/coolsnowwolf/packages/trunk/libs/rblibtorrent package/custom/rblibtorrent

# Replace luci-app-vssr
rm -rf feeds/luci/applications/luci-app-vssr
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr feeds/luci/applications/luci-app-vssr

# Replace luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall feeds/luci/applications/luci-app-passwall

# Replace luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash feeds/luci/applications/luci-app-openclash

# Add aliyundrive-fuse
svn export https://github.com/messense/aliyundrive-fuse/trunk/openwrt package/custom/aliyundrive-fuse

