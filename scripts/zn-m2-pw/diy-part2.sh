#!/bin/bash
# File name: diy-part2.sh

# 1. 替换 Golang 版本为 1.25
# 建议先完全删除旧包，克隆后再进行 feeds update
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang

# 2. 移除源码自带的 dnsmasq 冲突项
rm -rf feeds/base/package/network/services/dnsmasq

# 3. 强制安装 Passwall 源中的包
./scripts/feeds update packages
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall