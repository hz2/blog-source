title: Shadowsocks 备忘
date: 2015/5/29 07:53:30
updated: 2016/1/27 22:53:30
comments: false
description: 备忘
tags: [科学,备忘,梯子]
categories: 废话
---




## 服务器端：

#### 安装

**Debian / Ubuntu:**

```
apt-get install python-pip
pip install shadowsocks
```

<!--more-->

#### 使用

**直接后台运行：**

```
sudo ssserver -p 443 -k password -m rc4-md5 --user nobody -d start
```
注意：
1. 端口要改成别的，443 会和 SSL 的端口冲突。
2. 加密模式 `rc4-md5` 后面客户端要一致。
3. 密码<mark>不支持</mark>特殊字符比如`@$`

## 客户端：

**Ubuntu:**

```
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
```

**Debian:**

debian 不能直接用 add-apt-repository 命令。
先添加源：
```
echo "deb http://ppa.launchpad.net/hzwhuang/ss-qt5/ubuntu xenial main">> /etc/apt/sources.list
```
再添加公钥：
```
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 6DA746A05F00FA99
```
再安装就可以了：
```
sudo apt-get update && sudo apt-get install shadowsocks-qt5
```
更多：[其他平台](https://github.com/librehat/shadowsocks-qt5/wiki/%E5%AE%89%E8%A3%85%E6%8C%87%E5%8D%97)


**Windows:**

* 下载一：[shadowsocks-qt5
](https://github.com/librehat/shadowsocks-qt5/releases/tag/v2.4.0)
* <del>下载二：[Shadowsocks for Windows](https://github.com/shadowsocks/shadowsocks-csharp) </del>已墙

## 配置：

代理服务器选择：
127.0.0.1:1080  Socks V5


来源：[官方Github](https://github.com/shadowsocks/shadowsocks/wiki/Shadowsocks-%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)
官网：[https://shadowsocks.com/](https://shadowsocks.com/)
