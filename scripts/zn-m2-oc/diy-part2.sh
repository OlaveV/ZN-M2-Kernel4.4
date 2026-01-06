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

# 1. 优先更新并安装 OpenClash，确保其依赖不会被其他 feed 覆盖
./scripts/feeds update openclash
./scripts/feeds install -a -f -p openclash

# 2. 优先更新并安装 kenzok8 相关的源
# 这将确保来自 kenzo 和 small 仓库的插件（如 TurboACC 等）具有最高优先级
./scripts/feeds update kenzo
./scripts/feeds install -a -f -p kenzo

./scripts/feeds update small
./scripts/feeds install -a -f -p small
