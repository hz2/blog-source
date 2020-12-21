---
title: 变量声明
date: 2017-07-09 00:00:00
comments: false
description: 声明变量 var let const 的区别
tags: [JavaScript,变量,声明]
categories: 笔记
---

声明变量 `var` `let` `const` 的区别。
最近 ES6 越来越流行，于是研究了一下新的变量声明的区别，它们除了作用域外，更明显的是不能被重新声明，可以防止重复声明导致的各种莫名其妙的错误。


<!--more-->

|声明|类型|初始值|重新声明|重新赋值|作用域|变量提升|可配置|
|--|--|--|--|--|--|--|--|
|`var`|变量|可选|Y|Y|函数|Y|N|
|`let`|变量|可选|N|Y|块级<sup><mark>注</mark></sup>|N|N|
|`const`|常量|需要|N|N|块级|N|N|
|非声明|变量|需要|-|Y|全局|N|Y|

*注：花括号包含的范围即为块级作用域*

### 基本定义：

> 变量(`var`)语句声明了一个变量，可选地将其初始化为一个值。
> `let` 语句声明一个块级作用域的本地变量，并且可选的将其初始化为一个值。
> 常量(`const`)是块级作用域， 很像使用 let 语句定义的变量。常量的值不能通过重新赋值来改变，并且不能重新声明。

### 初始值

> 非声明变量只有在执行赋值操作的时候才会被创建。常量要求一个初始值。

```
var a // undefined
let b // undefined
const c // 报错
d // 报错
```
### 重新声明
```
var e 
var e // undefined
```
```
let f;
let f // 报错
```
```
const g = 1
const g = 1// 报错
```
```
h = 1
h = 1
// 非声明变量不存在重新声明，第一次为非声明变量，第二次为赋值
```
### 重新赋值

```
var i = 1
i = 2
console.log(i) // 2
```
```
let j = 1
j = 2
console.log(j) // 2
```
```
const k = 1
k = 2 // 报错
```
```
l = 1
l = 2
console.log(l) // 2
```

### 作用域：
> 声明变量的作用域限制在其声明位置的上下文中，而非声明变量总是全局的。

<svg class="mysvg" viewBox="0 0 70 70" xmlns="http://www.w3.org/2000/svg"><circle fill="#ccc" cx="35" cy="35" r="30"/><circle fill="#999" cx="45" cy="35" r="20"/><path fill="#777" d="M45,35 v20 a20,-20 0 0,0 20,-20 0 z" /><text fill="#333" font-size="2.5"><tspan y="60" x="28">全局作用域</tspan><tspan y="50" x="38">块级作用域</tspan><tspan y="43" x="50">函数</tspan><tspan y="28" x="33">循环，条件及其他</tspan></text></svg>

可以理解为 `var` 在函数内部时，声明位置上下文为函数，否则为全局。

```
var m = 1
!function() {
console.log(m) // undefined
var m = 2;
console.log(m) // 2
}()
console.log(m) // 1

```

`let`、`const` 的作用域在花括号范围之内，包括 `function()`、`for`、`if`等。
```
let n = 1,tmp = [1]
for( i in tmp ) {
let n = 2;
console.log(n); // 循环中为 2
}
console.log(n); //1
```
```
const o = 1;
if (1){
const o = 3;
console.log(o) // 条件语句中 3
}
console.log(o) // 1
```
### 变量提升：
MDN 的例子：
```
bla = 2
var bla;
// ...

// 可以理解为：

var bla;
bla = 2;
```
实践：
```
console.log(o);
var o;
// undefined 不会报错
 ```
```
console.log(p);
let p;
// 报错
 ```
 ```
console.log(q);
const q = 5;
// 报错
 ```
 ```
console.log(r);
r = 5;
// 报错
 ```

### 可配置属性：
> 声明变量是它所在上下文环境的不可配置属性（non-configurable property），非声明变量是可配置的（例如非声明变量可以被删除）。

> var, let以及const创建的不可设置的属性不能被delete操作删除。


参考：

https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Operators/delete#%E4%B8%8D%E5%8F%AF%E9%85%8D%E7%BD%AE%E5%B1%9E%E6%80%A7