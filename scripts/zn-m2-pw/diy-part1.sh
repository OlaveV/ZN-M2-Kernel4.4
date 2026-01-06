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

# 2. 添加 kenzok8 核心源
# kenzo: 包含大量常用插件 (如 Passwall, SSR-Plus, OpenClash 等)
# small: 包含上述插件所需的依赖包
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git;master' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small.git;master' >> feeds.conf.default

# 3. 确保 feeds.conf.default 存在并具有正确权限
chmod 644 feeds.conf.default
