---
title: 短路求值
date: 2017-07-29 00:00:00
comments: false
description: 短路求值
tags: [js,编程]
categories: 笔记
---

> 短路求值（Short-circuit evaluation，又称最小化求值），是一种逻辑运算符的求值策略。只有当第一个运算数的值无法确定逻辑运算的结果时，才对第二个运算数进行求值。( [wikipedia](https://zh.wikipedia.org/zh-hans/%E7%9F%AD%E8%B7%AF%E6%B1%82%E5%80%BC) )


<!--more-->

短路求值是 js 中一个对弱类型转换的简单应用。

`||` 和 `&&` 是 逻辑或 和 逻辑与 运算。

```
true || false // 左边判断为 true 时，结果为左边
false || true // 左边判断为 false 时，结果为右边
true && false // 左边判断为 true 时，结果为右边
false && true // 左边判断为 false 时，结果为左边
```

类型转换时常见的情况：

| 结果 | 转换  `Boolean(x)` |
| --- | --- |
| `true` | `Infinity`、`Error`、`{}`、`[]`、`"0"` |
| `false` | `0`、`NaN`、`null`、`undefined`、`""`  |

```
true || 1 // true
3 || true // 3
0 || false // false
null || "" // ""
true && 1 // 1
3 && null // null
0 && false // 0
null && 5 // null
```
小结：在短路求值里边，逻辑或 左边为 false 时，给出右边结果。逻辑与 左边为 true 时，给出右边结果。

### 应用

```
let lang = navigator.languages 
// lang = ["zh-CN", "zh", "en"]

Boolean(lang.indexOf("zh") + 1 || lang.indexOf("zh-CN") + 1 )
// true

// 判断以下的情况：
lang = ["zh-CN", "en"] // true
lang = ["zh", "en"] // true
lang = ["en-US", "en"] // false
```

判断一个数组中是否包含某元素，用 indexOf() 函数。
indexOf 函数本来是判断数组和字符串中元素的索引位置，存在是返回索引序号，不存在时返回 -1 

需求：只要浏览器语言支持 "zh" 或者 "zh-CN" 即可。

存在 `"zh-CN"` || 存在 `"zh"` === true

```
// 用 indexOf 不等于 -1 判断存在
( lang.indexOf("zh-CN") !== -1 ) || ( lang.indexOf("zh") !== -1 ) === true

// 即为 加 1 不等于 0
( lang.indexOf("zh-CN") + 1 !== 0 ) || ( lang.indexOf("zh") + 1 !== 0 ) === true

// 即为 加 1 为真
( lang.indexOf("zh-CN") + 1 == true ) || ( lang.indexOf("zh") + 1 == true ) === true
```
