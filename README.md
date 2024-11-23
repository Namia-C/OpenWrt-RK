<div align="center">
  
![img.png](https://github.com/Namia-R/OpenWrt-RK/blob/main/backups/%E5%AE%9E%E4%BE%8B/openwrt.png?raw=true)
-
<h1>OpenWrt-RK   固件云编译</h1>

<img src="https://img.shields.io/github/downloads/Namia-R/OpenWrt-RK/total.svg?style=for-the-badge&color=32C955"/>
<img src="https://img.shields.io/github/stars/Namia-R/OpenWrt-RK.svg?style=for-the-badge&color=orange"/>
<img src="https://img.shields.io/github/forks/Namia-R/OpenWrt-RK.svg?style=for-the-badge&color=ff69b4"/>
<img src="https://img.shields.io/github/license/Namia-R/OpenWrt-RK.svg?style=for-the-badge&color=blueviolet"/>

[![](https://img.shields.io/badge/-目录:-696969.svg)](#readme) [![](https://img.shields.io/badge/-项目说明-FFFFFF.svg)](#项目说明-) [![](https://img.shields.io/badge/-固件特色-FFFFFF.svg)](#固件特色-) [![](https://img.shields.io/badge/-固件下载-FFFFFF.svg)](#固件下载-) [![](https://img.shields.io/badge/-近期更新-FFFFFF.svg)](#近期更新-) [![](https://img.shields.io/badge/-插件预览-FFFFFF.svg)](#插件预览-) 


## 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 项目使用 Github Actions 拉取Openwrt的源码 [![Lean](https://img.shields.io/badge/Lede-OpenWrt-ff69b4.svg?style=flat&logo=appveyor)](https://github.com/coolsnowwolf/lede) 
- 固件默认管理地址：`192.168.10.1` 默认用户：`root`,Rockchip密码`【空】`
- 提供适配Rockchip-photonicat 以及 X86 平台设备的 OpenWrt 固件
- ### X86_64 [`x86_64💕`](https://github.com/Namia-R/OpenWrt-X) 
- 项目编译的固件插件为最新版本，最新版插件可能有 BUG，如果之前使用稳定则无需追新
- 第一次使用请采用全新安装，避免出现升级失败以及其他一些可能的 BUG
- 支持uefi和传统启动两种模式，可以使用微pe或传统你们知道的刷机方式Rockchip除外！
- 另外就是网盘的固件可能更新的网站是我原始仓库-X的你们如果刷网盘固件并且要和我后台关联更新的话把Namia-X改成Namia-R
- 刷机工具 [`百度网盘💕`](https://pan.baidu.com/s/1k14RFEMdHw3W_S7wCnQyDg?pwd=8986) 提取码: 8986 
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
| [![](https://img.shields.io/badge/openwrt-Rockchip-32C955.svg?logo=openwrt)](https://github.com/Namia-R/OpenWrt-RK/blob/main/.github/workflows/Rockchip-OpenWrt.yml) | [![](https://github.com/Namia-R/OpenWrt-RK/actions/workflows/Rockchip-OpenWrt.yml/badge.svg)](https://github.com/Namia-R/OpenWrt-RK/actions/workflows/Rockchip-OpenWrt.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/Namia-R/OpenWrt-RK/blob/main/configs/rockchip.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/Namia-R/OpenWrt-RK/releases) |

### 近期更新 [![](https://img.shields.io/badge/-近期固件更新-FFFFFF.svg)](#近期更新-)
- 编译 [`必看项💕`](https://raw.githubusercontent.com/Namia-R/OpenWrt-RK/refs/heads/main/backups/%E5%B7%B2%E7%BC%96%E8%AF%91%E8%AF%B4%E6%98%8E/txt) 
