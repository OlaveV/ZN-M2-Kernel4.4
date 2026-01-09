#!/bin/bash
# File name: diy-part2.sh

# 1. 替换 Golang 版本为 1.25 (Passwall/Xray 核心需求)
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang

# 2. 移除源码自带的 dnsmasq，防止与 .config 中的 dnsmasq-full 冲突
rm -rf feeds/base/package/network/services/dnsmasq

# 3. 强制安装 Passwall 及其依赖包
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall