title: 在背景图直接使用 SVG
date: 2017/06/20 0:0:0
comments: true
tags: [svg,CSS]
categories: 文档
---

在 `background-image` 中 直接使用 `data:image/svg+xml`。

<!--more-->

之前如果想要在 CSS 里边直接嵌入图片文件一般是用 `Data URL` 的方式，但是常规图片文件诸如 `.jpg` `.png` 都是二进制文件，所以需要用 base64 转换一下。

前缀如下：

```
data:image/gif;base64,
data:image/jpeg;base64,
data:image/png;base64,
```
理所当然的，到了嵌入 SVG 时也想到了用 base64
```
data:image/svg+xml;base64,
```
还记得以前看到有文章抱怨，SVG 能直接嵌入到 HTML 里，却不能嵌入到 CSS 中。

直到看到火狐自己的网站，[Firefox 附加组件](https://addons.mozilla.org/zh-CN/android/) 最近改版，开始使用这种方法。

{% fancybox /blog/images/bgsvg.png 火狐自己的用法 %}

直接把文本贴在 Data URL 后面，看的出来，里边只是把 svg/xml 文本经过网址编码转义一下：
- `<` 变成 `%3C`
- `>` 变成 `%3E` 
- `#` 变成 `%23` 

虽然火狐和 chrome 支持这种写法，但是在开发者工具里边，CSS 中引用的背景图，右键选择 <u>复制图像的 Data-URL</u> 的时候，还是只能转换成 base64 加密的 png 。

瞄了一眼 MDN，是我大惊小怪了。
[https://developer.mozilla.org/zh-CN/docs/Web/HTTP/data_URIs](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/data_URIs)