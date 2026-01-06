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
# 优先安装并覆盖 passwall 和 kenzok8 的包，避免与官方源冲突
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall_luci
./scripts/feeds install -a -f -p kenzo
./scripts/feeds install -a -f -p small
# 最终安装所有剩余包
./scripts/feeds install -a
