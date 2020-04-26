title: 伪类的奇技淫巧
date: 2016/11/22 12:26:09
updated: 2016/11/23 01:17:00
comments: true
description: CSS伪类的一些技巧
tags: [CSS,伪类]
categories: 教程
---


一些网页常见的特效通常是用 Javascript 来实现的，出于一些目的，可以试试用 纯CSS 来实现。

最近接触到 `:target ` 伪类时，了解到了一些奇妙的用法，算是大开眼界了。

然后自己琢磨出了用 纯CSS 实现的 Lightbox 图片点击放大的灯箱效果。

下面和网上出现的 CSS Tab栏切换效果、CSS手风琴效果等放到一起记录一下。

<!--more-->

## 1.用 :focus 和 :target 实现图片灯箱（Lightbox）效果。
简单说一下原理：

用 `:focus` 实现需要添加以添加 `input` 元素。因为 `:focus` 和后面的 `:checked` 都只对 `input` 有效。
为每一张图片添加一个 `input` 层，然后用样式调教成看不出来。当 `input` 获取到焦点的时候，就添加图片放大的效果。

用 `:target` 实现需要添加多个锚链接。后下面的多个 `:target` 实例都差不多。

效果演示：
- [:focus 实现](//hcw.github.io/demo/csslightbox/demo-focus.html) 
- [:target 实现](//hcw.github.io/demo/csslightbox/demo-target.html)


`:focus` 实现的缺点：
- 添加了一个 input，然后伪装成普通元素，不够纯粹；
- 因为是获取焦点，鼠标右键也会触发效果；
- 自定义不同的光标样式（cursor）会有延时；

`:target` 实现的缺点：
- 网址里边有多个 #id ，有碍美观，影响前进后退；
- 没法直接选择 #close ，需要多次添加，不够简洁；
- 没法直接点击图片还原；

## 2.用 :target 实现手风琴（accordion）效果。
网上的例子：[例子一](http://paulrhayes.com/experiments/accordion/)、[例子二](https://www.thecssninja.com/demo/css_accordion/)、[例子三](http://webdeveloperjuice.com/demos/css/css3effects.html#first) 。

原理都是一样的，当一个元素添加上 `:target` 之后，为它的兄弟选择器或者后代选择器加上单独的效果。

需要理解的是 `:target` 指的是 HTML文档里边的 `id=" "`。而不是 `href="#"`，但又离不开用 `href` 来制造一个锚链接。两者容易弄混。


自己实现了一下：
<p data-height="360" data-theme-id="dark" data-slug-hash="GNWVaQ" data-default-tab="css,result" data-user="hu2x" data-embed-version="2" data-pen-title=":target 实现 CSS 手风琴" class="codepen">See the Pen <a href="https://codepen.io/hu2x/pen/GNWVaQ/">:target 实现 CSS 手风琴</a> by hu2x (<a href="http://codepen.io/hu2x">@hu2x</a>) on <a href="http://codepen.io">CodePen</a>.</p>

吐槽：css 定义 height 过渡的时候不支持 `height:auto` ，查了一下说是不支持不确定的高度。但是我使用  `transition:all` 的时候又能够有效果了。

## 3.用 :target 和 :checked 实现选项卡（Tab）切换效果。

最早就是看到这里的效果才发现的 `:target` 的妙用。

[http://web.jobbole.com/88478](http://web.jobbole.com/88478)

下面两个都是原文中的例子，我 Fork 过来的。有兴趣的可以看看这篇文章里边原理讲解。
<p data-height="265" data-theme-id="dark" data-slug-hash="qqrega" data-default-tab="css,result" data-user="hu2x" data-embed-version="2" data-pen-title="纯CSS导航切换(:target伪类实现)" class="codepen">See the Pen <a href="http://codepen.io/hu2x/pen/qqrega/">纯CSS导航切换(:target伪类实现)</a> by hu2x (<a href="http://codepen.io/hu2x">@hu2x</a>) on <a href="http://codepen.io">CodePen</a>.</p>

<p data-height="265" data-theme-id="dark" data-slug-hash="oYZKVB" data-default-tab="css,result" data-user="hu2x" data-embed-version="2" data-pen-title="纯CSS导航切换(label 绑定 input:radio && ~)" class="codepen">See the Pen <a href="http://codepen.io/hu2x/pen/oYZKVB/">纯CSS导航切换(label 绑定 input:radio && ~)</a> by hu2x (<a href="http://codepen.io/hu2x">@hu2x</a>) on <a href="http://codepen.io">CodePen</a>.</p>

## 4.用 :checked 实现写导航目录展开效果。

原文地址：[https://segmentfault.com/a/1190000005958412](https://segmentfault.com/a/1190000005958412)
把原文中的代码复制到 codepen里边预览：
<p data-height="265" data-theme-id="dark" data-slug-hash="ObmMpj" data-default-tab="css,result" data-user="hu2x" data-embed-version="2" data-pen-title="ObmMpj" class="codepen">See the Pen <a href="http://codepen.io/hu2x/pen/ObmMpj/">ObmMpj</a> by hu2x (<a href="http://codepen.io/hu2x">@hu2x</a>) on <a href="http://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script>
看起来效果的手风琴差不多，不过这里是用 `:checked` 实现的。