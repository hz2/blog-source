---
title: 对象数组字符串的相互转化
date: 2017-09-09 00:00:00
comments: false
description: 短路求值
tags: [JavaScript,编程,数据]
categories: 笔记
---

对象、数组、字符串之间相互转化的方法。在处理数据的时候经常会碰到不同数据类型之间的转换。


<!--more-->


<svg width="800" height="800" version="1.1" viewBox="0 0 211.67 211.67" xmlns="http://www.w3.org/2000/svg" style="width: 80%;height: 80%;">
 <g transform="translate(0 -85.333)">
 <g fill="#23aaff" stroke="#0c6aa0" stroke-linecap="square" stroke-linejoin="round" stroke-width="1">
  <circle cx="105.17" cy="161.23" r="20.773"/>
  <circle cx="50.727" cy="255.54" r="20.773"/>
  <circle cx="159.62" cy="255.54" r="20.773"/>
 </g>
  <g transform="translate(4.5284 32.121)" fill="#00c077">
   <g transform="translate(2.015 -.3014)">
    <rect x="71.921" y="214.81" width="47.338" height="2.7055"/>
    <path transform="matrix(0 -14.286 10.679 0 -2162.4 1865)" d="m115.41 214.23-0.37798-0.65468h0.75596z"/>
   </g>
   <g transform="matrix(-1 0 0 1 199.27 14.799)">
    <rect x="71.921" y="214.81" width="47.338" height="2.7055"/>
    <path transform="matrix(0 -14.286 10.679 0 -2162.4 1865)" d="m115.41 214.23-0.37798-0.65468h0.75596z"/>
   </g>
  </g>
  <g transform="rotate(-60 76.281 235.55)" fill="#00c077">
   <g transform="translate(2.015 -.3014)">
    <rect x="71.921" y="214.81" width="47.338" height="2.7055"/>
    <path transform="matrix(0 -14.286 10.679 0 -2162.4 1865)" d="m115.41 214.23-0.37798-0.65468h0.75596z"/>
   </g>
   <g transform="matrix(-1 0 0 1 199.27 14.799)">
    <rect x="71.921" y="214.81" width="47.338" height="2.7055"/>
    <path transform="matrix(0 -14.286 10.679 0 -2162.4 1865)" d="m115.41 214.23-0.37798-0.65468h0.75596z"/>
   </g>
  </g>
  <g transform="rotate(240 112.18 206.73)" fill="#00c077">
   <g transform="translate(2.015 -.3014)">
    <rect x="71.921" y="214.81" width="47.338" height="2.7055"/>
    <path transform="matrix(0 -14.286 10.679 0 -2162.4 1865)" d="m115.41 214.23-0.37798-0.65468h0.75596z"/>
   </g>
   <g transform="matrix(-1 0 0 1 199.27 14.799)">
    <rect x="71.921" y="214.81" width="47.338" height="2.7055"/>
    <path transform="matrix(0 -14.286 10.679 0 -2162.4 1865)" d="m115.41 214.23-0.37798-0.65468h0.75596z"/>
   </g>
  </g>
  <g fill="#fff" font-size="7.8px" text-align="center" stroke-width=".26458" text-anchor="middle">
   <text><tspan x="105.03696" y="158.77837">对象</tspan><tspan x="105.03696" y="168.47975">Object</tspan></text>
   <text><tspan x="50.793583" y="253.08749">数组</tspan><tspan x="50.793583" y="262.78888">Array</tspan></text>
   <text><tspan x="159.73129" y="253.08182">字符串</tspan><tspan x="159.73129" y="262.7832">String</tspan></text>
  </g>
  <g fill="#444" font-size="5.6px">
   <text><tspan x="92" y="273">str.split('')</tspan></text>
   <text><tspan x="92" y="240">arr.join('')</tspan></text>
   <text><tspan x="152" y="183">JSON.parse(str)</tspan></text>
   <text><tspan x="150" y="216">JSON.stringify(obj)</tspan></text>
   <text><tspan x="11" y="200">Object.fromEntries(arr)</tspan></text>
   <text><tspan x="10" y="218">Object.entries(obj)</tspan></text>
  </g>
  <g fill="#828282" stroke="#fff" stroke-width="1" style="paint-order: stroke markers fill;">
  <path d="m146.27 186.35-18.047 27.535 0.64453 0.46485 17.808-27.207h49.618v-0.79297z" />
  <path d="m84.655 208.5-18.215 12.836h-57.085v0.79492h57.278l18.387-12.925z" />
  </g>
  <circle cx="128.55" cy="214.12" r="2.0575" fill="#fbca35"/>
  <circle cx="84.837" cy="208.85" r="2.0575" fill="#fbca35"/>
  <text fill="#444"><tspan x="14.080796" y="119.53019" font-size="12.7px">对象、数组、字符串 相互转化图</tspan></text>
 </g>
</svg>


## 数组 - 字符串

学习 `JavaScript` 最基础的知识，拼接和分割字符串。

- 拼接：
```
const arr = [1,'a',false]
arr.join('')
// "1afalse"
```

- 分割
```
const str = 'abcd'
str.split('')
// [ "a", "b", "c", "d" ]
```


## 对象 - 字符串

[JSON ( JavaScript Object Notation )](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/JSON) 可以将 js 在常见的数据类型和 JSON 字符串之间相互转换。


- 序列化：
```
JSON.stringify({a:1,b:2})
// "{\"a\":1,\"b\":2}"
```

- 解析
```
JSON.parse("{\"a\":1,\"b\":2}")
// { a: 1, b: 2 }
```

## 对象 - 数组

可以使用 `Object` 的内置方法在对象和固定格式的数组之间相互转换。

- `Object.entries()` 和 `Object.fromEntries()` 一对相对的方法：

```
Object.entries( { a: 1, b: 2 } )
// [ [ "a", 1 ] , [ "b", 2 ] ]

Object.fromEntries( [ [ "a", 1 ] , [ "b", 2 ] ] )
//  { a: 1, b: 2 }
```

- 对象到数组的单向转换：
```
// 只取键名
Object.keys(( { a: 1, b: 2 } ))
// [ "a", "b" ]

// 只取值
Object.values(( { a: 1, b: 2 } ))
// [ 1, 2 ]
```
- 数组到对象的单向转换：
```
// 以 index 为键名
Object.assign( {} , [ 'a', 'b' ] )
// { 0: "a", 1: "b" }
```


## 其他

常见的 js 数据类型都有内置的方法 `toString()` , 可以将其他类型转为字符串

| 类型 | 示例 | 结果 |
| -- | -- | -- |
| `Number` | 123 | "123" |
| `Array` | [1,2,'3'] | "1,2,3" |
| `Object` | { a: 1 } | "[object Object]" |
| `Date` | new Date(0) | "Thu Jan 01 1970 07:30:00 GMT+0730 (新加坡标准时间)" |
