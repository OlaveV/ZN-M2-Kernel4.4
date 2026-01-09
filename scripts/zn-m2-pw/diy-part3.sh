#!/bin/bash
# File name: diy-part3.sh

# 1. 修改固件描述信息 
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt ZN-M2 No-WiFi (Build: $(date +%Y%m%d))'/g" package/base-files/files/etc/openwrt_release

# 2. 修正 Design 主题的代理菜单链接至 Passwall 
HEADER_FILE="feeds/luci/themes/luci-theme-design/luasrc/view/themes/design/header.htm"
if [ -f "$HEADER_FILE" ]; then
    sed -i -r "s#navbar_proxy = 'openclash'#navbar_proxy = 'passwall'#g" "$HEADER_FILE"
fi

# 3. 彻底删除 Web 界面中的“无线”菜单索引 
# 仅删除展示层文件，不破坏 package 编译结构 
rm -f feeds/luci/modules/luci-mod-status/luasrc/view/admin_status/index_wifi.htm