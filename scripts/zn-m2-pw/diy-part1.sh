#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#echo 'src-git custom https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
# 添加 kenzok8 核心源
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git;master' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small.git;master' >> feeds.conf.default
