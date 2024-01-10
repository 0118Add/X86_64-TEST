#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part01.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# node - prebuilt
rm -rf feeds/packages/lang/node
git clone https://github.com/sbwml/feeds_packages_lang_node-prebuilt feeds/packages/lang/node

# 移除 SNAPSHOT 标签
sed -i 's,-SNAPSHOT,,g' include/version.mk
sed -i 's,-SNAPSHOT,,g' package/base-files/image-config.in

#git clone https://github.com/kiddin9/openwrt-packages package/openwrt-packages
#rm -rf package/openwrt-packages/{automount,v2ray-core,v2ray-geodata,sing-box}

# alist
git clone https://github.com/sbwml/luci-app-alist package/alist

# OpenClash
git clone -b dev --depth 1 https://github.com/vernesong/OpenClash package/luci-app-openclash

# Daed
git clone https://github.com/sbwml/luci-app-daed-next package/new/luci-app-daed-next

# homeproxy
git clone -b dev --depth 1 https://github.com/immortalwrt/homeproxy package/homeproxy

# unblockneteasemusic
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
sed -i 's/解除网易云音乐播放限制/音乐解锁/g' package/luci-app-unblockneteasemusic/root/usr/share/luci/menu.d/luci-app-unblockneteasemusic.json

# wechatpush
git clone https://github.com/tty228/luci-app-wechatpush package/luci-app-wechatpush

# turboacc
git clone https://github.com/chenmozhijin/turboacc package/new/luci-app-turboacc
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
sed -i 's/Turbo ACC 网络加速/网络加速/g' package/turboacc/luci-app-turboacc/po/zh-cn/turboacc.po

# net.netfilter.nf_conntrack_max from 16384 to 65535
sed -i 's#net.netfilter.nf_conntrack_max=16384#net.netfilter.nf_conntrack_max=65535#g' package/kernel/linux/files/sysctl-nf-conntrack.conf

# R8168驱动
#git clone -b master --depth 1 https://github.com/BROBIRD/openwrt-r8168.git package/new/r8168
# R8152驱动
#svn export -q https://github.com/0118Add/openwrt-packages/trunk/r8152 package/new/r8152
# r8125驱动
#svn export -q https://github.com/0118Add/openwrt-packages/trunk/r8125 package/new/r8125
