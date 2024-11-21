 #!/bin/bash

# 修改主机名字，把 OpenWrt X 修改你喜欢的就行（不能纯数字或者使用中文）
sed -i 's/LEDE/OpenWrt-RK/g' package/base-files/files/bin/config_generate

# 1----------------------------------------------------------------------------------------------------------------------------------
# 修改默认IP

# Modify default IP（修改wan口IP）本地编译时在文件的第150行左右
# sed -i 's/192.168.1.1/192.168.68.1/g' package/base-files/files/bin/config_generate

# 新版LUCI的ip修改地址
# sed -i 's/192.168.1.1/192.168.68.1/g' package/base-files/luci2/bin/config_generate

sed -i 's/192.168.1.1/192.168.10.1/g' ./package/base-files/luci2/bin/config_generate
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings

# 2----------------------------------------------------------------------------------------------------------------------------------
# 更改默认 Shell 为 zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# 3----------------------------------------------------------------------------------------------------------------------------------
# 更改 ttyd 顺序和名称
sed -i '3a \		"order": 10,' feeds/luci/applications/luci-app-ttyd/root/usr/share/luci/menu.d/luci-app-ttyd.json
sed -i 's/\"终端\"/\"TTYD 终端\"/g' feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po
# TTYD 免登录
sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 4----------------------------------------------------------------------------------------------------------------------------------
# 移除要替换的包
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-netgear
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/luci/applications/luci-app-serverchan

# 5----------------------------------------------------------------------------------------------------------------------------------
# Git稀疏克隆，只克隆指定目录到本地
function git_sparse_clone() {
  branch="$1" repourl="$2" && shift 2
  git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
  repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
  cd $repodir && git sparse-checkout set $@
  mv -f $@ ../package
  cd .. && rm -rf $repodir
}

# 6----------------------------------------------------------------------------------------------------------------------------------
# 添加额外插件
git clone --depth=1 https://github.com/Namia-R/luci-app-adguardhome package/luci-app-adguardhome
git clone --depth=1 https://github.com/sirpdboy/luci-app-netdata package/luci-app-netdata
git clone --depth=1 https://github.com/ouyangzq/sendat package/sendat
git_sparse_clone main https://github.com/Lienol/openwrt-package luci-app-filebrowser luci-app-ssr-mudb-server
# 插件包使用方法
# git clone --depth=1 https://github.com/siropboy/sirpdboy-package package/sirpdboy-package
# luci-app-poweroff关机插件
# git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff

#git clone --depth=1 https://github.com/destan19/OpenAppFilter package/OpenAppFilter
#git clone --depth=1 -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush package/luci-app-serverchan
#git clone --depth=1 https://github.com/ilxp/luci-app-ikoolproxy package/luci-app-ikoolproxy
#git_sparse_clone openwrt-18.06 https://github.com/immortalwrt/luci applications/luci-app-eqos
#git_sparse_clone master https://github.com/syb999/openwrt-19.07.1 package/network/services/msd_lite

# 7----------------------------------------------------------------------------------------------------------------------------------
# 科学上网插件
git clone --depth=1 https://github.com/immortalwrt/homeproxy package/luci-app-homeproxy
git clone --depth=1 -b main https://github.com/fw876/helloworld package/luci-app-ssr-plus
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2 package/luci-app-passwall2
git_sparse_clone main https://github.com/morytyann/OpenWrt-mihomo luci-app-mihomo mihomo
git_sparse_clone dev https://github.com/vernesong/OpenClash luci-app-openclash

# 8----------------------------------------------------------------------------------------------------------------------------------
# Themes
git clone --depth=1 https://github.com/kiddin9/luci-theme-edge package/luci-theme-edge
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone --depth=1 https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
git clone --depth=1 https://github.com/sirpdboy/luci-theme-kucat package/luci-theme-kucat
git clone --depth=1 https://github.com/SAENE/luci-theme-design package/luci-theme-design
git clone --depth=1 https://github.com/kenzok8/luci-theme-ifit package/luci-theme-ifit

# 9----------------------------------------------------------------------------------------------------------------------------------
# 更改 Argon 主题背景
cp -f $GITHUB_WORKSPACE/images/bg1.jpg package/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg

# 10----------------------------------------------------------------------------------------------------------------------------------
# 取消主题默认设置
find package/luci-theme-*/* -type f -name '*luci-theme-*' -print -exec sed -i '/set luci.main.mediaurlbase/d' {} \;

# 11----------------------------------------------------------------------------------------------------------------------------------
# 晶晨宝盒
#git_sparse_clone main https://github.com/ophub/luci-app-amlogic luci-app-amlogic
#sed -i "s|firmware_repo.*|firmware_repo 'https://github.com/haiibo/OpenWrt'|g" package/luci-app-amlogic/root/etc/config/amlogic
# sed -i "s|kernel_path.*|kernel_path 'https://github.com/ophub/kernel'|g" package/luci-app-amlogic/root/etc/config/amlogic
#sed -i "s|ARMv8|ARMv8_PLUS|g" package/luci-app-amlogic/root/etc/config/amlogic

# 12----------------------------------------------------------------------------------------------------------------------------------
# 拨号调制器
git clone --depth=1 https://github.com/ouyangzq/luci-app-cpe package/luci-app-cpe
git_sparse_clone main https://github.com/kenzok8/jell luci-app-modemband sms-tool modemband

# 13----------------------------------------------------------------------------------------------------------------------------------
# SmartDNS
git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns package/smartdns

# 14----------------------------------------------------------------------------------------------------------------------------------
# msd_lite
git clone --depth=1 https://github.com/ximiTech/luci-app-msd_lite package/luci-app-msd_lite
git clone --depth=1 https://github.com/ximiTech/msd_lite package/msd_lite

# 15----------------------------------------------------------------------------------------------------------------------------------
# MosDNS
git clone --depth=1 -b v5-lua https://github.com/sbwml/luci-app-mosdns package/luci-app-mosdns
git clone --depth=1 https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# 16----------------------------------------------------------------------------------------------------------------------------------
# Alist
git clone --depth=1 -b lua https://github.com/sbwml/luci-app-alist package/luci-app-alist

# 17----------------------------------------------------------------------------------------------------------------------------------
# DDNS-GO
git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go package/luci-app-ddns-go

# 18----------------------------------------------------------------------------------------------------------------------------------
# iStore
git_sparse_clone main https://github.com/linkease/istore-ui app-store-ui
git_sparse_clone main https://github.com/linkease/istore luci

# 19----------------------------------------------------------------------------------------------------------------------------------
#OLED
git clone --depth=1 https://github.com/natelol/luci-app-oled package/luci-app-oled
# 网速测试
git clone --depth=1 https://github.com/sirpdboy/netspeedtest.git package/netspeedtest

# 20----------------------------------------------------------------------------------------------------------------------------------
# 在线用户
git_sparse_clone main https://github.com/haiibo/packages luci-app-onliner
sed -i '$i uci set nlbwmon.@nlbwmon[0].refresh_interval=2s' package/lean/default-settings/files/zzz-default-settings
sed -i '$i uci commit nlbwmon' package/lean/default-settings/files/zzz-default-settings
chmod 755 package/luci-app-onliner/root/usr/share/onliner/setnlbw.sh

# 21----------------------------------------------------------------------------------------------------------------------------------
# x86 型号只显示 CPU 型号
sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/autocore

# 22----------------------------------------------------------------------------------------------------------------------------------
# 修改本地时间格式
sed -i 's/os.date()/os.date("%a %Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm

# 23----------------------------------------------------------------------------------------------------------------------------------
# 修改版本为编译日期
date_version=$(date +"%y.%m.%d")
orig_version=$(cat "package/lean/default-settings/files/zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
sed -i "s/${orig_version}/R${date_version} by NAmia-R/g" package/lean/default-settings/files/zzz-default-settings

# 24----------------------------------------------------------------------------------------------------------------------------------
# 修改 Makefile
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/..\/..\/lang\/golang\/golang-package.mk/$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang-package.mk/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=@GHREPO/PKG_SOURCE_URL:=https:\/\/github.com/g' {}
find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload.github.com/g' {}

# 25----------------------------------------------------------------------------------------------------------------------------------
# 调整 V2ray服务器 到 VPN 菜单
sed -i 's/services/vpn/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/controller/*.lua
sed -i 's/services/vpn/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
sed -i 's/services/vpn/g' feeds/luci/applications/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm

# 26----------------------------------------------------------------------------------------------------------------------------------
# 修复 hostapd 报错
# cp -f $GITHUB_WORKSPACE/scripts/011-fix-mbo-modules-build.patch package/network/services/hostapd/patches/011-fix-mbo-modules-build.patch
cp -f $GITHUB_WORKSPACE/scripts/qmi_wwan_q.c package/wwan/driver/quectel_QMI_WWAN/src/qmi_wwan_q.c

# 27----------------------------------------------------------------------------------------------------------------------------------
# 修复 armv8 设备 xfsprogs 报错
sed -i 's/TARGET_CFLAGS.*/TARGET_CFLAGS += -DHAVE_MAP_SYNC -D_LARGEFILE64_SOURCE/g' feeds/packages/utils/xfsprogs/Makefile

# 28----------------------------------------------------------------------------------------------------------------------------------
# 修复 uboot报错
#sed -i '/^UBOOT_TARGETS := rk3528-evb rk3588-evb/s/^/#/' package/boot/uboot-rk35xx/Makefile
sed  -i 's/^UBOOT\_TARGETS\ \:\=\ rk3528\-evb\ rk3588\-evb/#UBOOT\_TARGETS\ \:\=\ rk3528\-evb\ rk3588\-evb/g' package/boot/uboot-rk35xx/Makefile

# 设置wifi加密方式为psk2+ccmp,wifi密码为88888889
sed -i 's/encryption=none/encryption=psk2+ccmp/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio${devidx}.encryption=psk2+ccmp/a\\t\t\tset wireless.default_radio${devidx}.key=88888889' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 设置无线的国家代码为CN,wifi的默认功率为20
sed -i 's/country=US/country=CN/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.radio${devidx}.disabled=0/a\\t\t\tset wireless.radio${devidx}.txpower=20' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 结束✔️----------------------------------------------------------------------------------------------------------------------------------
./scripts/feeds update -a
./scripts/feeds install -a
