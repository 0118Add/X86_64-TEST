#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part02.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 删除插件
rm -rf package/feeds/luci/luci-app-apinger

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 更改固件版本信息
sed -i "s|DISTRIB_REVISION='.*'|DISTRIB_REVISION=''|g" package/base-files/files/etc/openwrt_release
sed -i "s|DISTRIB_DESCRIPTION='.*'|DISTRIB_DESCRIPTION='OpenWrt 21.02'|g" package/base-files/files/etc/openwrt_release

# alist
#rm -rf feeds/packages/lang/golang
#svn export -q https://github.com/sbwml/packages_lang_golang/branches/19.x feeds/packages/lang/golang
#svn export -q https://github.com/sbwml/luci-app-alist/trunk/alist package/new/alist
#svn export -q https://github.com/sbwml/luci-app-alist/trunk/luci-app-alist package/new/luci-app-alist

# dockerman
rm -rf feeds/luci/applications/luci-app-dockerman
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-dockerman package/new/luci-app-dockerman

# ADBYBY Plus +
#svn export -q https://github.com/0118Add/openwrt-packages/trunk/adbyby package/new/adbyby
#svn export -q https://github.com/0118Add/openwrt-packages/trunk/luci-app-adbyby-plus package/new/luci-app-adbyby-plus

# DDNS GO
svn export -q https://github.com/kiddin9/openwrt-packages/trunk/ddns-go package/new/ddns-go
svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns-go package/new/luci-app-ddns-go

# OpenClash
svn export -q  https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/new/luci-app-openclash

# Shared for PassWall and ShadowsocksR Plus+
svn export -q https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/new/luci-app-ssr-plus
#svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-app-passwall package/new/luci-app-passwall
#svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-app-passwall2 package/new/luci-app-passwall2
svn export -q https://github.com/0118Add/openwrt-packages/trunk/brook package/new/brook
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/dns2socks package/new/dns2socks
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/ipt2socks package/new/ipt2socks
svn export -q https://github.com/immortalwrt/packages/branches/openwrt-21.02/net/kcptun package/new/kcptun
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/hysteria package/new/hysteria
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/new/chinadns-ng
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/new/trojan-go
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/new/trojan-plus
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/microsocks package/new/microsocks
svn export -q https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/new/pdnsd-alt
svn export -q https://github.com/immortalwrt/packages/branches/openwrt-21.02/net/redsocks2 package/new/redsocks2
svn export -q https://github.com/fw876/helloworld/trunk/gn package/new/gn
svn export -q https://github.com/fw876/helloworld/trunk/xray-plugin package/new/xray-plugin
svn export -q https://github.com/fw876/helloworld/trunk/lua-neturl package/new/lua-neturl
svn export -q https://github.com/fw876/helloworld/trunk/dns2tcp package/new/dns2tcp
svn export -q https://github.com/fw876/helloworld/trunk/naiveproxy package/new/naiveproxy
svn export -q https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/new/shadowsocks-rust
svn export -q https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/new/shadowsocksr-libev
svn export -q https://github.com/fw876/helloworld/trunk/simple-obfs package/new/simple-obfs
svn export -q https://github.com/fw876/helloworld/trunk/tcping package/new/tcping
svn export -q https://github.com/fw876/helloworld/trunk/trojan package/new/trojan
svn export -q https://github.com/fw876/helloworld/trunk/tuic-client package/new/tuic-client
svn export -q https://github.com/fw876/helloworld/trunk/v2ray-core package/new/v2ray-core
svn export -q https://github.com/fw876/helloworld/trunk/v2ray-geodata package/new/v2ray-geodata
svn export -q https://github.com/fw876/helloworld/trunk/v2ray-plugin package/new/v2ray-plugin
svn export -q https://github.com/fw876/helloworld/trunk/xray-core package/new/xray-core

# bypass
svn export -q https://github.com/kiddin9/openwrt-packages/trunk/lua-maxminddb package/new/lua-maxminddb
svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass package/new/luci-app-bypass

# vssr
#svn export -q https://github.com/kiddin9/openwrt-packages/trunk/lua-maxminddb package/new/lua-maxminddb
svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vssr package/new/luci-app-vssr

# upx & ucl
#svn export --force https://github.com/coolsnowwolf/lede/trunk/package/lean/upx   tools/upx
#svn export --force https://github.com/coolsnowwolf/lede/trunk/package/lean/ucl   tools/ucl
#svn export --force https://github.com/coolsnowwolf/lede/trunk/tools/ninja tools/ninja
#sed -i '/builddir dependencies/i\tools-y += ucl upx' tools/Makefile
#sed -i '/builddir dependencies/a\$(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile

# Release Ram
svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-ramfree feeds/luci/applications/luci-app-ramfree
ln -sf ../../../feeds/luci/applications/luci-app-ramfree ./package/feeds/luci/luci-app-ramfree

# Scheduled Reboot
svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-autoreboot feeds/luci/applications/luci-app-autoreboot
ln -sf ../../../feeds/luci/applications/luci-app-autoreboot ./package/feeds/luci/luci-app-autoreboot

# frpc
rm -rf ./feeds/luci/applications/luci-app-frpc
#svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-app-frpc feeds/luci/applications/luci-app-frpc
#ln -sf ../../../feeds/luci/applications/luci-app-frpc ./package/feeds/luci/luci-app-frpc
svn export -q https://github.com/0118Add/openwrt-packages/trunk/luci-app-frpc package/new/luci-app-frpc 

# ttyd
rm -rf feeds/luci/applications/luci-app-ttyd
svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-ttyd feeds/luci/applications/luci-app-ttyd
ln -sf ../../../feeds/luci/applications/luci-app-ttyd ./package/feeds/luci/luci-app-ttyd

# vlmcsd
#svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-vlmcsd feeds/luci/applications/luci-app-vlmcsd
#ln -sf ../../../feeds/luci/applications/luci-app-vlmcsd ./package/feeds/luci/luci-app-vlmcsd
#svn export -q https://github.com/immortalwrt/packages/branches/openwrt-21.02/net/vlmcsd package/new/vlmcsd

# Filetransfer
svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-filetransfer feeds/luci/applications/luci-app-filetransfer
ln -sf ../../../feeds/luci/applications/luci-app-filetransfer ./package/feeds/luci/luci-app-filetransfer
svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/libs/luci-lib-fs feeds/luci/libs/luci-lib-fs
ln -sf ../../../feeds/luci/libs/luci-lib-fs ./package/feeds/luci/luci-lib-fs

# AutoCore
#svn export -q https://github.com/padavanonly/immortalwrtARM/branches/master/package/emortal/autocore package/new/autocore
#svn export -q https://github.com/8688Add/OpenWrt-CI/trunk/autocore package/new/autocore
#svn export -q https://github.com/immortalwrt/immortalwrt/branches/master/package/utils/mhz package/new/mhz

# default settings and translation
#svn export -q https://github.com/immortalwrt/immortalwrt/branches/master/package/emortal/default-settings package/new/default-settings
#svn export -q https://github.com/jinlife/OpenWrt-Autobuild/trunk/default-settings package/new/default-settings

# Zerotier
rm -rf feeds/luci/applications/luci-app-zerotier
#rm -rf feeds/packages/net/zerotier
#svn export -q https://github.com/0118Add/openwrt-packages/trunk/zerotier package/new/zerotier
#svn export -q https://github.com/0118Add/openwrt-packages/trunk/luci-app-zerotier package/new/luci-app-zerotier
svn export -q https://github.com/0118Add/luci-immortalwrt/branches/openwrt-21.02/applications/luci-app-zerotier feeds/luci/applications/luci-app-zerotier
ln -sf ../../../feeds/luci/applications/luci-app-zerotier ./package/feeds/luci/luci-app-zerotier

# unblockneteasemusic
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/new/luci-app-unblockneteasemusic
#svn export -q https://github.com/immortalwrt/luci/branches/openwrt-21.02/applications/luci-app-unblockneteasemusic feeds/luci/applications/luci-app-unblockneteasemusic
#ln -sf ../../../feeds/luci/applications/luci-app-unblockneteasemusic ./package/feeds/luci/luci-app-unblockneteasemusic

# luci-theme-edge
#svn export -q https://github.com/kiddin9/openwrt-packages/trunk/luci-theme-edge package/new/luci-theme-edge

# net.netfilter.nf_conntrack_max from 16384 to 65535
sed -i 's#net.netfilter.nf_conntrack_max=16384#net.netfilter.nf_conntrack_max=65535#g' package/kernel/linux/files/sysctl-nf-conntrack.conf

# kernel
svn export -q https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/kernel/r8125 package/new/r8125
svn export -q https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/kernel/r8152 package/new/r8152
svn export -q https://github.com/immortalwrt/immortalwrt/branches/openwrt-21.02/package/kernel/r8168 package/new/r8168

sed -i 's/ShadowSocksR Plus+/SSR Plus+/g' package/new/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
sed -i 's/解除网易云音乐播放限制/音乐解锁/g' package/new/luci-app-unblockneteasemusic/root/usr/share/luci/menu.d/luci-app-unblockneteasemusic.json
sed -i 's/Frp 内网穿透/内网穿透/g' package/new/luci-app-frpc/po/zh-cn/frp.po
#sed -i 's/广告屏蔽大师 Plus+/广告屏蔽/g' package/new/luci-app-adbyby-plus/po/zh-cn/adbyby.po


# 调整 Dockerman 到 服务 菜单
sed -i 's/"admin",/"admin","services",/g' package/new/luci-app-dockerman/luasrc/controller/*.lua
sed -i 's/"admin/"admin\/services/g' package/new/luci-app-dockerman/luasrc/model/*.lua
sed -i 's/"admin/"admin\/services/g' package/new/luci-app-dockerman/luasrc/model/cbi/dockerman/*.lua
sed -i 's/"admin/"admin\/services/g' package/new/luci-app-dockerman/luasrc/view/dockerman/*.htm
sed -i 's/"admin/"admin\/services/g' package/new/luci-app-dockerman/luasrc/view/dockerman/cbi/*.htm

# 调整 bypass 到 GFW 菜单
sed -i 's/services/vpn/g' package/new/luci-app-bypass/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-bypass/luasrc/model/cbi/bypass/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-bypass/luasrc/view/bypass/*.htm

# 调整 SSRP 到 GFW 菜单
sed -i 's/services/vpn/g' package/new/luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm

# 调整 Pass Wall 到 GFW 菜单
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/controller/*.lua
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/model/cbi/passwall/client/*.lua
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/model/cbi/passwall/server/*.lua
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/passwall/*.lua
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/app_update/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/auto_switch/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/global/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/haproxy/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/log/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/node_list/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/rule/*.htm
#sed -i 's/services/vpn/g' package/new/luci-app-passwall/luasrc/view/passwall/server/*.htm

# 调整 Pass Wall 2 到 GFW 菜单
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/controller/*.lua
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/model/cbi/passwall2/client/*.lua
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/model/cbi/passwall2/server/*.lua
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/passwall2/*.lua
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/app_update/*.htm
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/auto_switch/*.htm
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/global/*.htm
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/log/*.htm
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/node_list/*.htm
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/rule/*.htm
#sed -i 's/services/vpn/g' package/passwall2/luci-app-passwall2/luasrc/view/passwall2/server/*.htm

# 调整 Hello World 到 GFW 菜单
sed -i 's/services/vpn/g' package/new/luci-app-vssr/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-vssr/luasrc/view/vssr/*.htm

# 调整 Open Clash 到 GFW 菜单
sed -i 's/services/vpn/g' package/new/luci-app-openclash/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-openclash/luasrc/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i 's/services/vpn/g' package/new/luci-app-openclash/luasrc/view/openclash/*.htm

# 修改权限
chmod 0755 package/new/luci-app-bypass/root/etc/init.d/bypass

# 替换文件
wget -O ./feeds/luci/modules/luci-mod-status/htdocs/luci-static/resources/view/status/include/10_system.js https://raw.githubusercontent.com/0118Add/X86_64-Test/main/10_system.js
