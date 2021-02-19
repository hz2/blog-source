---
title: Debian 安装旧版本的 Java
date: 2021-02-19 00:00:00
comments: false
description: Debian 安装旧版本的 Java
tags: [Java,Debian]
categories: 笔记
---

某项目用的是 Java 8 的版本，Debian 系统默认安装最新的 Java 11 版本，会报错。切换到对应版本就好了。

<!--more-->

Debian 的发行版和 JAVA 的发行版有一个[对应关系](https://wiki.debian.org/Java#Java_and_Debian)。

| Debian 版本 | Java 版本 | 包 |
| -- | -- | -- |
| 10 buster | OpenJDK v11 | JRE: [openjdk-11-jre](https://packages.debian.org/openjdk-11-jre)<br />JDK: [openjdk-11-jdk](https://packages.debian.org/openjdk-11-jdk) |
| 9 stretch | OpenJDK v8 | JRE: [openjdk-8-jre](https://packages.debian.org/openjdk-8-jre)<br />JDK: [openjdk-8-jdk](https://packages.debian.org/openjdk-8-jdk) |
| 8 jessie | OpenJDK v7 | JRE: [openjdk-7-jre](https://packages.debian.org/openjdk-7-jre)<br />JDK: [openjdk-7-jdk](https://packages.debian.org/openjdk-7-jdk) |


### 下载和安装

首先下载需要用到的版本

```bash
# openjdk-8-jre
wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-8/openjdk-8-jre_8u275-b01-1~deb9u1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-8/openjdk-8-jre-headless_8u275-b01-1~deb9u1_amd64.deb
# openjdk-8-jdk
wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-8/openjdk-8-jdk_8u275-b01-1~deb9u1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-8/openjdk-8-jdk-headless_8u275-b01-1~deb9u1_amd64.deb
```

安装

```bash
sudo dpkg -i *.deb
```

### 切换版本

选择想要切换到的版本的编号即可。

```bash
# 选择编号
sudo update-alternatives --config java
# 查看版本
java -version
# 输出如下
# openjdk version "1.8.0_275"
# OpenJDK Runtime Environment (build 1.8.0_275-8u275-b01-1~deb9u1-b01)
# OpenJDK 64-Bit Server VM (build 25.275-b01, mixed mode)
```

### 重新安装依赖

```bash
mvn install
```