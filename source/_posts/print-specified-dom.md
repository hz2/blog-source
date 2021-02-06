---
title: web 打印指定的 DOM
date: 2021-02-06 17:3118
comments: false
description: web 上调用打印机打印指定的 DOM 节点内容
tags: [web,JavaScript]
categories: 教程
---

web 上调用打印机打印指定的 DOM 节点内容。

<!--more-->


目前在 web 端调用打印机可以直接使用 `window.print()` 方法。但是这样会将整个网页文档绘制到打印的区域。

要打印指定的区域查到两种思路：

 - 将整个网页内容备份 > 用需要打印的 DOM 替换网页内容 > 打印 > 还原网页内容
 - 将打印的区域截图，打印图片

感觉都不是很理想。从绘制 Canvas 的过程受到启发，想到可以用一个看不见的 `iframe` 绘制需要打印的内容。过程如下：

 1. 准备一个的盒子，用于绘制

 ```html
 <iframe id="printwindow" :src="iframeSrc" frameborder="0"></iframe>
 ```

 2. 打印机绘制的样式独立于网页渲染的样式，需要单独指定

 ```css
 @media print {
  @page {
    margin: 0
  }

  body {
    margin-left: 1.75cm;
    margin-right: 0.25cm;
    margin-top: 0;
    font-size: 12px;
  }

}
 ```
3. 将需要打印的内容转成 `URL` ，赋值给 `iframe`

> 这里有几种方法: 条件允许，可以将内容转为网页上传到服务器，拿到绝对地址；最开始想到是将内容转为网页，使用 `Data URL`，但上线后发现有跨域问题；最后查到可以使用 `Blob URL`

```javascript
this.$nextTick(() => {
    // 指定的打印机样式
    const style = `@media print{@page{margin:0}body{margin-left:1.75cm;margin-right:0.25cm;margin-top:0;font-size: 12px;}}}`;
    // 获取需要打印的区域的内容 DOM
    const dom = document.querySelector("#printBox").innerHTML;
    // 拼合成一个 html 文件
    const html = `<!DOCTYPE html><html lang="zh"><head><meta charset="UTF-8"><style>${style}</style></head><body>${dom}</body></html>`;
    // 转为 data url ，会产生跨域问题，放弃
    // this.iframeSrc = `data:text/html,${encodeURIComponent(html)}`
    // 转为 blob url
    this.iframeSrc = URL.createObjectURL(new Blob([html], { type: "text/html" }));
    setTimeout(() => {
        // 操作 iframe 窗口执行打印命令
        document.querySelector("#printwindow").contentWindow.print();
    }, 350);
});
```

4. 最后通过样式隐藏渲染打印内容的 `iframe` 即可

```css
#printwindow {
  left: -5000px;
  top: -5000px;
  position: absolute;
}
```

