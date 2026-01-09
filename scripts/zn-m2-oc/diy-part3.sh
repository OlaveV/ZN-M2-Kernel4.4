#!/bin/bash
# Description: OpenWrt DIY script part 3 (After Install feeds)

# 修改版本信息显示编译日期
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt ZN-M2 (Build: $(date +%Y%m%d))'/g" package/base-files/files/etc/openwrt_release

# 替换golang版本为更稳定的 23.x
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

# Design主题适配：将顶栏链接指向 OpenClash
if [ -f feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm ]; then
    sed -i -r "s#navbar_proxy = 'passwall'#navbar_proxy = 'openclash'#g" feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm
fi