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

# 1. 解锁/添加原有插件源（保留您原脚本的注释示例逻辑）
#
# echo 'src-git custom https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
# 使用 grep 检查是否已存在 kenzo 源，不存在才添加
if ! grep -q "kenzo" feeds.conf.default; then
    echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git;master' >> feeds.conf.default
    echo 'src-git small https://github.com/kenzok8/small.git;master' >> feeds.conf.default
fi

chmod 644 feeds.conf.default
