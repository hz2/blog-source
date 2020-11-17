---
title: 雪碧图
updated: 2016-11-25 15:56:30
date: 2016-11-25 15:56:30
comments: false
description: background-position 里边用百分比的奇葩问题。
tags: [svg,Sprite,雪碧图]
categories: 废话
---

background-position 里边用百分比的奇葩问题。


做 CSS雪碧图（ CSS Sprite ）会用到 `background-position` 。一般都是直接用 px 来计算。
最近看到 webket.org 官网里边的 SVG Sprite 用的是百分比，很是有趣，就实践一下。
<!--more-->
首先的看看通过 `px` 像素定位的背景。和中小学学习的坐标系略有不同，是从左上角开始计算的。左上是正数，右下是负数。

然后 `background-position` 后面就是分别代表着横坐标和纵坐标。

<svg class="mysvg" viewBox="0 0 70 70" xmlns="http://www.w3.org/2000/svg"><g fill="#999"><path d="M40 0l-1 5h.8v30h-30v-.8l-5 1 5 1v-.8h30v35h.4v-35h35v-.4h-35v-30h.8z"/><circle cx="30" cy="25" r="1"/><circle cx="58" cy="45" r="1"/><text font-size="5"><tspan y="10" x="25">Y轴线</tspan><tspan y="42" x="2">X轴线</tspan></text><text font-size="3"><tspan x="11" y="20">background-position: 10px 10px</tspan><tspan x="25" y="50">background-position: -20px -10px</tspan></text></g></svg>

比如说做好一张图片，分成八块，分别用 A - G 代表，每一块宽 20px 高 15px，可以很快推算出来每一个的坐标。

<svg class="mysvg" viewBox="0 0 70 70" xmlns="http://www.w3.org/2000/svg"><g fill="#999"><path d="M40 0l-1 5h.8v30h-30v-.8l-5 1 5 1v-.8h30v36h.4v-36h36v-.4h-36v-30h.8z"/><g fill="#ccc" opacity=".5"><path d="M40.2 35.4h12v9h-12z"/><path d="M52.2 44.4h12v9h-12z"/><path d="M40.2 53.4h12v9h-12z"/><path d="M52.2 62.4h12v9h-12z"/></g><g fill="#888" opacity=".5"><path d="M52.2 35.4h12v9h-12z"/><path d="M40.2 44.4h12v9h-12z"/><path d="M52.2 53.4h12v9h-12z"/><path d="M40.2 62.4h12v9h-12z"/></g><text font-size="4" fill="#999"><tspan x="9" y="45">A: 0 0;</tspan><tspan x="9" y="50">B: 0 -10px;</tspan><tspan x="9" y="55">C: 0 -20px;</tspan><tspan x="9" y="60">E: 15px 0;</tspan><tspan x="9" y="65">F: 15px 10px;</tspan></text><text font-size="5" fill="#aaa"><tspan x="44.5" y="41.5">A</tspan><tspan x="56.5" y="41.5">B</tspan><tspan x="44.5" y="50.5">C</tspan><tspan x="56.5" y="50.5">D</tspan><tspan x="44.6" y="59.5">E</tspan><tspan x="56.8" y="59.5">F</tspan><tspan x="44.5" y="68.5">G</tspan><tspan x="56.5" y="68.5">H</tspan></text></g></svg>

到 CSS Sprite 用百分比计算的时候，要利用 SVG 无限缩放的矢量特性，通常将其排列成一行或者一列。然后将 `background-size` 其中的一个设置为 100% 或者直接写 cover。

比如说竖着的 A B C D 四块，会想当然的以为是 100% 平分为四块，即每一个都是 25%，然后 Y 坐标分别是 `0% 25% 50% 75%` ？其实不是这样的。

不知道是不是为了充分利用 100% 这个数值，当需要分成四块，实际上每一块的高度是 <i><u>四减一之差</u> 分之一</i>，即 `1 / ( n - 1 )` ，坐标分别是 `0% 33.33% 66.66% 100%` 。
可以用 calc 计算出百分比。
<svg class="mysvg" viewBox="0 0 85 85" xmlns="http://www.w3.org/2000/svg"><g fill="#999"><path d="M40 0l-1 5h.8v30h-30v-.8l-5 1 5 1v-.8h30v36h.4v-36h36v-.4h-36v-30h.8z"/><g fill="#888"><path d="M40.2 35.4h12v9h-12z"/><path d="M40.2 53.4h12v9h-12z"/><path d="M40.2 71.4h12v9h-12z"  opacity=".5"/><path d="M40.2 17.4h12v9h-12z" opacity=".5"/></g><g fill="#ccc"><path d="M40.2 44.4h12v9h-12z"/><path d="M40.2 62.4h12v9h-12z"/><path d="M40.2 26.4h12v9h-12z"  opacity=".5"/></g><text font-size="5" fill="#aaa"><tspan x="44.5" y="41.5">A</tspan><tspan x="44.5" y="50.5">B</tspan><tspan x="44.6" y="59.5">C</tspan><tspan x="44.5" y="68.5">D</tspan><tspan x="44.6" y="23.5">C</tspan><tspan x="44.5" y="32.5">D</tspan><tspan x="44.5" y="77.5">A</tspan></text><text font-size="3" fill="#999"><tspan x="54" y="36.2">Y: 0%</tspan><tspan x="54" y="63.2">Y: 100%</tspan><tspan x="57" y="72.2">Y: calc( 4/3 &#42; 100% )</tspan><tspan x="57" y="45.2">Y: calc( 1/3 &#42; 100% )</tspan><tspan x="57" y="54.2">Y: calc( 2/3 &#42; 100% )</tspan><tspan x="57" y="26.8">Y: calc( -1/3 &#42; 100% )</tspan></text></g><g  opacity=".6" stroke="#000" stroke-width=".5"><path d="M40 35.2h12.2v36.2h-12.2v-36h.2v35.8h11.8v-35.8h-12z"/></g></svg>
