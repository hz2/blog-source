title: 图标字体
date: 2015/06/13 0:53:30
comments: false
tags: [Webfont,字体,Inkscape]
categories: 文档
---


自己动手制作 Webfont 图标字体教程。
处理 SVG图形 可能需要的工具：
- 图像处理软件：Photoshop 或者 <i class="hx-gimp" style="font-size:2.3em"></i> GIMP
- 矢量绘图软件：AI、CorelDraw 或者 <i class="hx-inkscape" style="font-size:2.3em"></i> Inkscape 。

<!--more-->

### 最终成品可以参考这里：
#### 湖心字库： <i class="hx-hxalpha" style="font-size:4em;color:teal"></i>
#### [<i class="hx-github"></i> https://git.io/hxfont](https://git.io/hxfont) 

将制作好的单个的 SVG 文件，拖放到 [<i class="hx-link"></i> Fontello](http://fontello.com/) 网站里边，可以自动完成合并和转格式。

如果不喜欢在线转化，也可以使用本地转化的工具。
虽然直接用手工复制粘贴就可以制作出 SVG字体，然后再转化。但毕竟没有全自动化方便。

1. 工具一：[<i class="hx-github"></i> SVGO](https://github.com/svg/svgo) 优化SVG
2. 工具二：[<i class="hx-github"></i> FontCustom](https://github.com/FontCustom/fontcustom) 转换SVG导出字体
3. 工具三：[<i class="hx-github"></i> woff2](https://github.com/google/woff2) 转换WOFF2

## 优化 SVG
安装和使用 SVGO
```
npm install -g svgo
svgo -f ../path/to/folder/with/svg/files
```
把多余的注释代码删掉并压缩 SVG 文件，支持文件夹批量操作。节约人力。
可能出现一定程度的误删，导致最终网页上的图标错位。

## 转换 SVG 到字体
### 安装 Ruby-dev
```
apt-get install ruby-dev
```
### 安装
```
sudo apt-get install fontforge
wget http://people.mozilla.com/~jkew/woff/woff-code-latest.zip
unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && sudo mv sfnt2woff /usr/local/bin/
gem install fontcustom
```
### 用法
```
fontcustom compile my/vectors
```

## 转化字体到 WOFF2
### 安装
```
git clone --recursive https://github.com/google/woff2.git
cd woff2
make clean all
```
### 添加到系统路径
```
sudo ln -s ~/woff2/woff2_compress /usr/local/bin
sudo ln -s ~/woff2/woff2_decompress /usr/local/bin
```
### 用法
```
woff2_compress myfont.ttf
#压缩 TTF 到 WOFF2
woff2_decompress myfont.woff2
#解压缩 WOFF2 到 TTF 
```

