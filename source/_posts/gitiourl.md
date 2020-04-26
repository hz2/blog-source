title: 使用 git.io
date: 2016/10/30 13:27:06 
updated: 2016/11/21 00:53:58
comments: true
description: 自定义 git.io 短网址域名
tags: [Git,github,网址]
categories: 教程
---

自定义 git.io 短网址域名

[https://git.io/](https://git.io/) 是 Github 的一个短网址服务。
直接访问可以生成随机的短网址，但是不能自定义。
<!--more-->
看到别人是能够使用自定义的，搜索了一下，找到方法如下：

来源：[Git.io: GitHub URL Shortener](https://github.com/blog/985-git-io-github-url-shortener)

用法：
```
curl -i https://git.io -F "url=https://github.com/technoweenie" -F "code=t"
curl -i https://git.io/abc123
```

举例：
将 `https://github.com/hcw/hx-font` 缩短为 `hxfont`

```
curl -i https://git.io -F "url=https://github.com/hcw/hx-font" -F "code=hx-font"
curl -i https://git.io/hx-font
```
举例：
将 `https://hcw.github.io/home` 缩短为 `hcw`

```
curl -i https://git.io -F "url=https://hcw.github.io/home" -F "code=hcw"
curl -i https://git.io/hcw
```
<完>
