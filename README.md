<div align="center">
  
![img.png](https://github.com/Namia-R/OpenWrt-RK/blob/main/backups/%E5%AE%9E%E4%BE%8B/openwrt.png?raw=true)
-
<h1>OpenWrt-RK   固件云编译</h1>

<img src="https://img.shields.io/github/downloads/Namia-R/OpenWrt-RK/total.svg?style=for-the-badge&color=32C955"/>
<img src="https://img.shields.io/github/stars/Namia-R/OpenWrt-RK.svg?style=for-the-badge&color=orange"/>
<img src="https://img.shields.io/github/forks/Namia-R/OpenWrt-RK.svg?style=for-the-badge&color=ff69b4"/>
<img src="https://img.shields.io/github/license/Namia-R/OpenWrt-RK.svg?style=for-the-badge&color=blueviolet"/>

[![](https://img.shields.io/badge/-目录:-696969.svg)](#readme) [![](https://img.shields.io/badge/-项目说明-FFFFFF.svg)](#项目说明-) [![](https://img.shields.io/badge/-固件特色-FFFFFF.svg)](#固件特色-) [![](https://img.shields.io/badge/-固件下载-FFFFFF.svg)](#固件下载-) [![](https://img.shields.io/badge/-近期更新-FFFFFF.svg)](#近期更新-) [![](https://img.shields.io/badge/-插件预览-FFFFFF.svg)](#插件预览-) [![](https://img.shields.io/badge/-定制固件-FFFFFF.svg)](#定制固件-) [![](https://img.shields.io/badge/-特别提示-FFFFFF.svg)](#特别提示-) [![](https://img.shields.io/badge/-鸣谢-FFFFFF.svg)](#鸣谢-)
</div>


## 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 项目使用 Github Actions 拉取Openwrt的源码 [![Lean](https://img.shields.io/badge/Lede-OpenWrt-ff69b4.svg?style=flat&logo=appveyor)](https://github.com/coolsnowwolf/lede) 
- 固件默认管理地址：`192.168.5.1` 默认用户：`root`,Rockchip密码`【password】`
- 提供适配Rockchip-photonicat 以及 X86 平台设备的 OpenWrt 固件
- ### X86_64 [`x86_64💕`](https://github.com/Namia-R/OpenWrt-RK) 
- 项目编译的固件插件为最新版本，最新版插件可能有 BUG，如果之前使用稳定则无需追新
- 第一次使用请采用全新安装，避免出现升级失败以及其他一些可能的 BUG
- 支持uefi和传统启动两种模式，可以使用微pe或传统你们知道的刷机方式Rockchip除外！
- 另外就是网盘的固件可能更新的网站是我原始仓库-X的你们如果刷网盘固件并且要和我后台关联更新的话把Namia-X改成Namia-R
- 刷机工具 [`百度网盘💕`](https://pan.baidu.com/s/1k14RFEMdHw3W_S7wCnQyDg?pwd=8986) 提取码: 8986 
- 编译 [`必看项💕`](https://raw.githubusercontent.com/Namia-R/OpenWrt-RK/refs/heads/main/backups/%E5%B7%B2%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E/txt) 
- ### 最后就是所有的固件是基于本人有什么设备而去编译的而不是大众化，有啥做的不好的自行谅解！邮箱和T G联系

[![Telegram](https://img.shields.io/badge/-Telegram-181717?style=flat&logo=Telegram&logoColor=white)](https://t.me/RileyK9880)
[![Gmail](https://img.shields.io/badge/-Gmail-D14836?style=flat&logo=Gmail&logoColor=white)](mailto:kmy258855@gmail.com)


## 固件特色 [![](https://img.shields.io/badge/-本项目固件特色-FFFFFF.svg)](#固件特色-)
1. 支持在线更新固件Rockchip除外！
2. 光影猫photonicat添加有线、无线、3G / 4G /5G 网卡驱动和sim卡适配驱动
3. 集成中文版 netdata 实时监控插件，小白也能轻松看懂系统概况
4. 集成 iStore 应用商店，可根据自己需求自由安装所需插件
5. 集成 Docker 服务，可在 OpenWrt 内自由部署 Docker 应用
6. 集成应用过滤插件，支持游戏、视频、聊天、下载等 APP 过滤
7. 集成在线用户插件，可查看所有在线用户 IP 地址与实时速率等

## 固件下载 [![](https://img.shields.io/badge/-编译状态及下载链接-FFFFFF.svg)](#固件下载-)
点击下表中 [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?style=flat&logo=hack-the-box)](https://github.com/Namia-R/OpenWrt-RK/releases) 即可跳转到该设备固件下载页面
| 平台+设备名称 | 固件编译状态 | 配置文件 | 固件下载 |
| :-------------: | :-------------: | :-------------: | :-------------: |
| [![](https://img.shields.io/badge/openwrt-PhotonicatWrt-32C955.svg?logo=openwrt)](https://github.com/Namia-R/OpenWrt-RK/blob/main/.github/workflows/Rockchip-OpenWrt.yml) | [![](https://github.com/Namia-R/OpenWrt-RK/actions/workflows/Rockchip-OpenWrt.yml/badge.svg)](https://github.com/Namia-R/OpenWrt-RK/actions/workflows/Rockchip-OpenWrt.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/Namia-R/OpenWrt-RK/blob/main/configs/rockchip.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/Namia-R/OpenWrt-RK/releases) |


### 近期更新 [![](https://img.shields.io/badge/-近期固件更新-FFFFFF.svg)](#近期更新-)
- ### 努力修复光影猫photonicat编译基础配置……🤣


## 插件预览 [![](https://img.shields.io/badge/-固件插件及功能预览-FFFFFF.svg)](#插件预览-)
- ![img.png](backups/实例/1img.png)
- ![img.png](backups/实例/img.png)
</details>
<details>
<summary><b>&nbsp; photonicatWRT 等固件插件预览</b></summary>
<br/>
<details>
<summary><b>├── 状态</b></summary>
　├── 概况<br/>
　├── 防火墙<br/>
　├── 路由表<br/>
　├── 系统日志<br/>
　├── 内核日志<br/>
　├── 系统进程<br/>
　├── 实时信息<br/>
　├── 实时监控<br/>
　├── 在线用户<br/>
　├── WireGuard 状态<br/>
　├── 负载均衡<br/>
　└── 释放内存
</details>
<details>
<summary><b>├── 系统</b></summary>
　├── 系统<br/>
　├── 管理权<br/>
　├── TTYD 终端<br/>
　├── 软件包<br/>
　├── 启动项<br/>
　├── 计划任务<br/>
　├── 挂载点<br/>
　├── 磁盘管理<br/>
　├── 备份/升级<br/>
　├── 在线/更新<br/>
　├── 自定义命令<br/>
　├── 定时重启<br/>
　├── 文件传输<br/>
　├── Argon 主题设置<br/>
　├── 重启<br/>
　└── 关机
</details>
<details>
<summary><b>├── 服务</b></summary>
　├── PassWall<br/>
　├── PassWall2<br/>
　├── Hello World<br/>
　├── iKoolProxy 滤广告<br/>
　├── V2ray 服务器<br/>
　├── 广告屏蔽大师 Plus+<br/>
　├── ShadowSocksR Plus+<br/>
　├── AdGuard Home<br/>
　├── 应用过滤<br/>
　├── MosDNS<br/>
　├── 全能推送<br/>
　├── 微信推送<br/>
　├── 上网时间控制<br/>
　├── 解锁网易云灰色歌曲<br/>
　├── OpenClash<br/>
　├── 动态 DNS<br/>
　├── MultiSD_Lite<br/>
　├── SmartDNS<br/>
　├── 网络唤醒<br/>
　├── 迅雷快鸟<br/>
　├── Frps<br/>
　├── UU游戏加速器<br/>
　├── UPnP<br/>
　├── KMS 服务器<br/>
　├── AirPlay 2 音频接收<br/>
　├── udpxy<br/>
　├── Nps 内网穿透<br/>
　├── uHTTPd<br/>
　├── Frp 内网穿透<br/>
　└── MWAN3 分流助手
</details>
<details>
<summary><b>├── iStore</b></summary>
</details>
<details>
<summary><b>├── Docker</b></summary>
　├── 概览<br/>
　├── 容器<br/>
　├── 镜像<br/>
　├── 网络<br/>
　├── 存储卷<br/>
　├── 事件<br/>
　└── 设置
</details>
<details>
<summary><b>├── 网络存储</b></summary>
　├── 文件浏览器<br/>
　├── 可道云<br/>
　├── NFS 管理<br/>
　├── 微力同步<br/>
　├── Alist 文件列表<br/>
　├── qBittorrent<br/>
　├── USB 打印服务器<br/>
　├── 硬盘休眠<br/>
　├── 挂载 SMB 网络共享<br/>
　├── 网络共享<br/>
　├── FTP 服务器<br/>
　├── Rclone<br/>
　├── Aria2 配置<br/>
　├── miniDLNA<br/>
　└── Transmission
</details>
<details>
<summary><b>├── VPN</b></summary>
　├── N2N v2 VPN<br/>
　├── SoftEther VPN 服务器<br/>
　├── OpenVPN 服务器<br/>
　├── PPTP VPN 服务器<br/>
　├── IPSec VPN 服务器<br/>
　└── ZeroTier
</details>
<details>
<summary><b>├── 网络</b></summary>
　├── 接口<br/>
　├── DHCP/DNS<br/>
　├── 主机名<br/>
　├── IP/MAC 绑定<br/>
　├── 静态路由<br/>
　├── 防火墙<br/>
　├── 诊断<br/>
　├── Socat<br/>
　├── SQM QoS<br/>
　├── 网速控制<br/>
　├── 多线多拨<br/>
　├── 负载均衡<br/>
　└── Turbo ACC 网络加速
</details>
<details>
<summary><b>├── 带宽监控</b></summary>
　├── 显示<br/>
　├── 配置<br/>
　├── 备份<br/>
　├── 网速监控<br/>
　└── 实时流量监测
</details>
　└── <b>退出</b>
</details>


## 定制固件 [![](https://img.shields.io/badge/-项目基本编译教程-FFFFFF.svg)](#定制固件-)
1. 首先要登录 Gihub 账号，然后 Fork 此项目到你自己的 Github 仓库，复刻[`必看项！！！💕`](https://github.com/Namia-R/OpenWrt-RK/blob/main/backups/%E5%B7%B2%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E/txt)
2. TOKEN密匙制作教程：https://git.io/jm.md 云编译需要 [在此](https://github.com/settings/tokens) 创建个```token```,勾选：```repo```, ```workflow```，保存所得的key【后面两种随意】
- 然后在此仓库```Settings```->```Secrets```中添加个名字为```REPO_TOKEN```的Secret,填入token获得的key


  
6. 编译大概需要1-3小时，一般两个半小时就编译完成，最后后在仓库主页 [Releases](https://github.com/Namia-R/OpenWrt-RK/releases) 对应 Tag 标签内下载固件
<details>
