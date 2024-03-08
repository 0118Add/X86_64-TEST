#!/bin/bash -e

# golang 1.22
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang

# node - prebuilt
rm -rf feeds/packages/lang/node
git clone https://github.com/sbwml/feeds_packages_lang_node-prebuilt feeds/packages/lang/node

# Default settings
git clone https://github.com/sbwml/default-settings package/new/default-settings

# DDNS
#sed -i '/boot()/,+2d' feeds/packages/net/ddns-scripts/files/etc/init.d/ddns

# nlbwmon - disable syslog
#sed -i 's/stderr 1/stderr 0/g' feeds/packages/net/nlbwmon/files/nlbwmon.init

# boost - 1.84.0
rm -rf feeds/packages/libs/boost
cp -a ../master/packages/libs/boost feeds/packages/libs/boost

# lrzsz - 0.12.20
rm -rf feeds/packages/utils/lrzsz
git clone https://github.com/sbwml/packages_utils_lrzsz package/new/lrzsz

# FRPC
#rm -rf feeds/luci/applications/luci-app-frpc
#rm -rf feeds/packages/net/frp
#cp -a ../master/packages/net/frp feeds/packages/net/frp
#sed -i 's/procd_set_param stdout $stdout/procd_set_param stdout 0/g' feeds/packages/net/frp/files/frpc.init
#sed -i 's/procd_set_param stderr $stderr/procd_set_param stderr 0/g' feeds/packages/net/frp/files/frpc.init
#sed -i 's/stdout stderr //g' feeds/packages/net/frp/files/frpc.init
#sed -i '/stdout:bool/d;/stderr:bool/d' feeds/packages/net/frp/files/frpc.init
#sed -i '/stdout/d;/stderr/d' feeds/packages/net/frp/files/frpc.config
#sed -i '/Log stdout/d;/Log stderr/d' feeds/luci/applications/luci-app-frpc/htdocs/luci-static/resources/view/frpc.js

# haproxy - bump version
rm -rf feeds/packages/net/haproxy
cp -a ../master/packages/net/haproxy feeds/packages/net/haproxy

# samba4 - bump version
#rm -rf feeds/packages/net/samba4
#git clone https://github.com/sbwml/feeds_packages_net_samba4 feeds/packages/net/samba4
# enable multi-channel
#sed -i '/workgroup/a \\n\t## enable multi-channel' feeds/packages/net/samba4/files/smb.conf.template
#sed -i '/enable multi-channel/a \\tserver multi channel support = yes' feeds/packages/net/samba4/files/smb.conf.template
#sed -i 's/#aio read size = 0/aio read size = 1/g' feeds/packages/net/samba4/files/smb.conf.template
#sed -i 's/#aio write size = 0/aio write size = 1/g' feeds/packages/net/samba4/files/smb.conf.template
# default config
#sed -i 's/invalid users = root/#invalid users = root/g' feeds/packages/net/samba4/files/smb.conf.template
#sed -i 's/bind interfaces only = yes/bind interfaces only = no/g' feeds/packages/net/samba4/files/smb.conf.template
#sed -i 's/#create mask/create mask/g' feeds/packages/net/samba4/files/smb.conf.template
#sed -i 's/#directory mask/directory mask/g' feeds/packages/net/samba4/files/smb.conf.template
#sed -i 's/0666/0644/g;s/0744/0755/g;s/0777/0755/g' feeds/luci/applications/luci-app-samba4/htdocs/luci-static/resources/view/samba4.js
#sed -i 's/0666/0644/g;s/0777/0755/g' feeds/packages/net/samba4/files/samba.config
#sed -i 's/0666/0644/g;s/0777/0755/g' feeds/packages/net/samba4/files/smb.conf.template

# autoCore
git clone https://github.com/8688Add/autocore-arm -b openwrt-23.05 package/new/autocore

# Aria2 & ariaNG
#rm -rf feeds/packages/net/ariang
#rm -rf feeds/luci/applications/luci-app-aria2
#git clone https://github.com/sbwml/ariang-nginx package/new/ariang-nginx
#rm -rf feeds/packages/net/aria2
#git clone https://github.com/sbwml/feeds_packages_net_aria2 -b 22.03 feeds/packages/net/aria2

# AirConnect
#git clone https://github.com/sbwml/luci-app-airconnect package/new/airconnect

# SSRP & Passwall
rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
git clone https://github.com/sbwml/openwrt_helloworld package/new/helloworld -b v5
sed -i 's/ShadowSocksR Plus+/SSR Plus+/g' package/new/helloworld/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua

# DAED
#git clone https://github.com/sbwml/luci-app-daed package/new/daed
#sed -i 's/DAED/daed/g' package/new/daed/luci-app-daed/luasrc/controller/daed.lua
git clone https://github.com/sbwml/luci-app-daed-next package/new/daed-next
#git clone https://github.com/8688Add/luci-app-dae package/new/dae
#sed -i 's/DAE/dae/g' package/new/dae/luci-app-dae/luasrc/controller/dae.lua

# immortalwrt homeproxy
git clone https://github.com/immortalwrt/homeproxy package/new/homeproxy
sed -i "s/ImmortalWrt/OpenWrt/g" package/new/homeproxy/po/zh_Hans/homeproxy.po
sed -i "s/ImmortalWrt proxy/OpenWrt proxy/g" package/new/homeproxy/htdocs/luci-static/resources/view/homeproxy/{client.js,server.js}

# OpenClash
git clone --single-branch --depth 1 -b dev https://github.com/vernesong/OpenClash package/new/OpenClash

# alist
#git clone https://github.com/sbwml/luci-app-alist package/new/alist

# Netdata
#rm -rf feeds/packages/admin/netdata
#cp -a ../master/packages/admin/netdata feeds/packages/admin/netdata
#sed -i 's/syslog/none/g' feeds/packages/admin/netdata/files/netdata.conf

# OpenAI
#git clone https://github.com/sbwml/luci-app-openai package/new/openai

# qBittorrent
#git clone https://github.com/sbwml/luci-app-qbittorrent package/new/qbittorrent

# Zerotier
git clone https://$gitea/sbwml/luci-app-zerotier package/new/luci-app-zerotier

# 解除网易云音乐播放限制
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic package/new/luci-app-unblockneteasemusic
sed -i 's/解除网易云音乐播放限制/音乐解锁/g' package/new/luci-app-unblockneteasemusic/root/usr/share/luci/menu.d/luci-app-unblockneteasemusic.json

# wechatpush
git clone https://github.com/tty228/luci-app-wechatpush package/new/luci-app-wechatpush

# xunlei
#git clone https://github.com/sbwml/luci-app-xunlei package/xunlei

# Theme
git clone --depth 1 https://github.com/sbwml/luci-theme-argon.git package/new/luci-theme-argon
sed -i 's/Argon 主题设置/主题设置/g' package/new/luci-theme-argon/luci-app-argon-config/po/zh_Hans/argon-config.po
#git clone --depth=1 -b js https://github.com/gngpp/luci-theme-design package/new/luci-theme-design

# Mosdns
#rm -rf feeds/packages/net/v2ray-geodata
#git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns

# OpenAppFilter
#git clone https://github.com/sbwml/OpenAppFilter --depth=1 package/new/OpenAppFilter

# iperf3
rm -rf feeds/packages/net/iperf3
cp -a ../master/packages/net/iperf3 feeds/packages/net/iperf3
sed -i "s/D_GNU_SOURCE/D_GNU_SOURCE -funroll-loops/g" feeds/packages/net/iperf3/Makefile

# 带宽监控
#sed -i 's/services/network/g' feeds/luci/applications/luci-app-nlbwmon/root/usr/share/luci/menu.d/luci-app-nlbwmon.json
#sed -i 's/services/network/g' feeds/luci/applications/luci-app-nlbwmon/htdocs/luci-static/resources/view/nlbw/config.js

#### 磁盘分区 / 清理内存 / 打印机 / 定时重启 / 数据监控 / KMS / 访问控制（互联网时间）/ ADG luci / IP 限速 / 文件管理器 / CPU / 迅雷快鸟
rm -rf feeds/packages/utils/coremark
git clone https://github.com/8688Add/openwrt_pkgs package/new/openwrt_pkgs --depth=1
sed -i 's/WireGuard/WiGd状态/g' feeds/luci/protocols/luci-proto-wireguard/root/usr/share/luci/menu.d/luci-proto-wireguard.json

# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 修正连接数
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

# 翻译
#sed -i 's,发送,Transmission,g' feeds/luci/applications/luci-app-transmission/po/zh_Hans/transmission.po
#sed -i 's,frp 服务器,FRP 服务器,g' feeds/luci/applications/luci-app-frps/po/zh_Hans/frps.po
#sed -i 's,frp 客户端,FRP 客户端,g' feeds/luci/applications/luci-app-frpc/po/zh_Hans/frpc.po

# SQM Translation
#mkdir -p feeds/packages/net/sqm-scripts/patches
#curl -s https://$mirror/openwrt/patch/sqm/001-help-translation.patch > feeds/packages/net/sqm-scripts/patches/001-help-translation.patch

# SQM - luci menu order
# sed -i "s/59/150/g" feeds/luci/applications/luci-app-sqm/root/usr/share/luci/menu.d/luci-app-sqm.json

# mjpg-streamer init
sed -i "s,option port '8080',option port '1024',g" feeds/packages/multimedia/mjpg-streamer/files/mjpg-streamer.config
sed -i "s,option fps '5',option fps '25',g" feeds/packages/multimedia/mjpg-streamer/files/mjpg-streamer.config

# luci-app-mjpg-streamer
#rm -rf feeds/luci/applications/luci-app-mjpg-streamer
#git clone https://github.com/sbwml/luci-app-mjpg-streamer feeds/luci/applications/luci-app-mjpg-streamer

# unzip
rm -rf feeds/packages/utils/unzip
git clone https://github.com/sbwml/feeds_packages_utils_unzip feeds/packages/utils/unzip

# 克隆immortalwrt-luci仓库
git clone --depth=1 -b openwrt-23.05 https://github.com/immortalwrt/luci.git immortalwrt-luci
cp -rf immortalwrt-luci/applications/luci-app-alist feeds/luci/applications/luci-app-alist
ln -sf ../../../feeds/luci/applications/luci-app-alist ./package/feeds/luci/luci-app-alist
cp -rf immortalwrt-luci/applications/luci-app-ddns-go feeds/luci/applications/luci-app-ddns-go
ln -sf ../../../feeds/luci/applications/luci-app-ddns-go ./package/feeds/luci/luci-app-ddns-go
# 克隆immortalwrt-packages仓库
git clone --depth=1 -b openwrt-23.05 https://github.com/immortalwrt/packages.git immortalwrt-packages
cp -rf immortalwrt-packages/net/alist feeds/packages/net/alist
ln -sf ../../../feeds/packages/net/alist ./package/feeds/packages/alist
cp -rf immortalwrt-packages/net/ddns-go feeds/packages/net/ddns-go
ln -sf ../../../feeds/packages/net/ddns-go ./package/feeds/packages/ddns-go
cp -rf immortalwrt-packages/net/dae feeds/packages/net/dae
ln -sf ../../../feeds/packages/net/dae ./package/feeds/packages/dae
