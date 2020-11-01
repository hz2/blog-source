title: 「黑白」主题
date: 2017/06/10 0:0:0
updated: 2020/06/04 23:04:20 
comments: true
tags: [hexo,主题,CSS]
categories: 文档
---

「黑白」( plain ) 是一款 hexo 博客主题。
可以在 [<i class="hx-github"></i>github](https://github.com/hz2/plain-theme)上查看。

<!--more-->

主题特点：
- 简单纯粹，无复杂配色，只有黑白灰；
- 为阅读而生，把干扰阅读的元素都放在菜单里隐藏；
- 内嵌 SVG 图标，支持无限缩放；
- 整合 湖心字库，查看 [<i class="hx-hxalpha"></i>Demo](https://h2.work/hxfont/demo.html)
- 移动端优化

---
有序列表：
1. 朝辞白帝彩云间
2. 千里江陵一日还
3. 两岸猿声啼不住
4. 轻舟已过万重山
---

下面是组件测试：

*斜体* **粗体** ~~删除~~ `行内代码`<sup>上标</sup><sub>下标</sub><mark>高亮</mark>


## Task Lists {#custom-id}

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media

## emoji

Gone camping! :tent: Be back soon.

That is so funny! :joy:


## Definition Lists

First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second term.


## Footnotes

Here's a simple footnote,[^1] and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.

    Indent paragraphs to include them in the footnote.

    `{ my code }`

    Add as many paragraphs as you like.



```javascript
var button = document.querySelector('button');
// 中文测试
button.onclick = function() {
  var name = prompt('What is your name?');
  alert('Hello ' + name + ', nice to see you!');
}
```

| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |


> 独龙子犹氏所辑《喻世》等诸言。颇存雅道，时著良规．一破令时陋习。而宋元旧种，亦被搜括殆尽。肆中人见其行世颇捷，意余当别有秘本，图出而衡之。不知一二遗者，皆其沟中之断芜。略不足陈已。因取古今来杂碎事可新听睹、佐谈谐者，演而畅之，得若干卷。其事之真与饰，名之实与赝，各参半。文不足征．意殊有属。凡耳目前怪怪奇奇，当亦无所不有，总以言之者无罪，闻之者足以为戒，则可谓云尔已矣。若谓此非今小史家所奇，则是舍吐丝蚕而问粪金牛，吾恶乎从罔象索之？

图片：
<img width="320px" src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='32' height='24'  viewBox='0 0 32 24'%3E%3Crect x='0' y='0' width='32' height='24' fill='%23f0f0f0'/%3E%3Ctext x='6.5' y='13.2' fill='%23999' font-size='5'%3E%3Ctspan%3E测试图片%3C/tspan%3E%3C/text%3E%3C/svg%3E">
# 一级标题
明日要出咸阳打猎，就请张果同去一看。合围既罢，前驱擒得大角鹿一只，将忖庖厨烹宰。张果见了道：“不可杀！不可杀！此是仙鹿，已满千岁。昔时汉武帝元狩五年，在上林游猎，臣曾侍从，生获此鹿。后来不忍杀，舍放了。”玄宗笑道：“鹿甚多矣，焉知即此鹿？且时迁代变，前鹿岂能保猎人不擒过，留到今日？”张果道：“武帝舍鹿之时，将铜牌一片，扎在左角下为记，试看有此否？”玄宗命人验看，在左角下果得铜牌，有二寸长短，两行小字，已模糊黑暗，辨不出了。玄宗才信。就问道：“元狩五年，是何甲子？到今多少年代了？”张果道：“元狩五年，岁在癸亥。武帝始开昆明池，到今甲戌岁，八百五十二年矣。”玄宗命宣太史官相推长历，果然不差。于是晓得张果是千来岁的人，群臣无不钦服。
## 二级标题
一日，二人在宫中下棋。玄宗接得鄂州刺史表文一道，奏称：“本州有仙童罗公远，广有道术。”盖因刺史迎春之日，有个白衣人身长丈余，形容怪异，杂在人丛之中观看，见者多骇走。旁有小童喝他道：“业畜！何乃擅离本处，惊动官司？还不速去！”其人并不敢则声，提起一把衣服，乡飞走了。府吏看见小童作怪，一把擒住。来到公燕之所，具白刺史。刺史问他姓名，小童答应“姓罗，名公远。适见守江龙上岸看春，某喝令回去。”刺史不信道：“怎见得是龙？须得吾见真形方可信。”小童道：“请待后日。”至期，于水边作一小坑，深才一尺，去江岸丈余，引江水入来。刺史与郡人毕集，见有一白鱼，长五六寸，随流至坑中，跳跃两遍，渐渐大了。有一道青烟如线，在坑中起，一霎时，黑云满空，天色昏暗。小童道：“快都请上了津亭。”正走间，电光闪烁，大雨如泻。须臾少定，见一大白龙起于江心，头与云连，有顿饭时方灭。刺史看得真实，随即具表奏闻，就叫罗公远随表来朝见帝。
### 三级标题
玄宗欲从他学隐形之术，公远不肯，道：“陛下乃真人降化，保国安民，万乘之尊，学此小术何用？”玄宗怒骂之，公远即走入殿柱中，极口数玄宗过失。玄宗愈加怒发，叫破柱取他。柱既破，又见他走入玉碣中。就把玉碣破为数十片，片片有公远之形，却没奈他何。玄宗谢了罪，忽然又立在面前。玄宗恳求至切，公远只得许之。别则传授，不肯尽情。玄宗与公远同做隐形法时，果然无一人知觉。若是公远不在，玄宗自试，就要露出些形来，或是衣带，或是幞头脚，宫中人定寻得出。玄宗晓得他传授不尽，多将金帛赏赍，要他喜欢。有时把威力吓他道：“不尽传，立刻诛死。”公远只不作准。玄宗怒极，喝令：“绑出斩首！”刀斧手得旨，推出市曹斩讫。
#### 四级标题
却说景泰年间，苏州府吴江县有个商民，复姓欧阳，妈妈是本府崇明县曾氏，生下一女一儿。儿年十六岁，未婚。那女儿二十岁了，虽是小户人家，到也生得有些姿色，就赘本村陈大郎为婿，家道不富不贫，在门前开小小的一爿杂货店铺，往来交易，陈大郎和小勇两人管理。他们翁婿夫妻郎勇之间，你敬我爱，做生意过日。忽遇寒冬天道，陈大郎往苏州置些货物，在街上行走，只见纷纷洋洋，下着国家祥瑞。古人有诗说得好，道是：

    尽道丰年瑞，丰年瑞若何？
    长安有贫者，宜瑞不宜多！
##### 五级标题
陈大郎情知不关他事，只得放了手，忍气吞声跑回曾家。就在崇明县进了状词；又到苏州府进了状词，批发本县捕衙缉访。又各处粉墙上贴了招子，许出赏银二十两。又寻着原载去的船家，也拉他到巡捕处，讨了个保，押出挨查。仍旧到崇明与曾氏共住二十余日，并无消息。不觉的残冬将尽，新岁又来，两人只得回到家中。欧公已知上项事了，三人哭做一堆，自不必说。别人家多欢欢喜喜过年，独有他家烦烦恼恼。
###### 六级标题
他三人竟走至外婆家来，见了外婆，说了缘故，老人家肉天肉地的叫，欢喜无极。陈大郎又叫了一只船，三人一同到家，欧公欧妈，见儿女、女婿都来，还道是睡里梦里！大郎便将前情告诉了一遍，各各悲欢了一场。欧公道：“此果是乌将军义气，然若不遇飓风，何缘得到岛中？普陀大士真是感应！”大郎又说着大士梦中四句诗，举家叹异。

> 却说那梁宗师是个不识文字的人，又且极贪，又且极要奉承乡官及上司。前日考过杭、嘉、湖，无一人不骂他的，几乎吃秀才们打了。曾编着几句口号道：“道前梁铺，中人姓富，出卖生儒，不误主顾。”又有一个对道：“公子笑欣欣，喜弟喜兄都入学；童生愁惨惨，恨祖恨父不登科。”又把《四书》几语，做着几股道：“君子学道公则悦，小人学道尽信书。不学诗，不学礼，有父兄在，如之何其废之！诵其诗，读其书，虽善不尊，如之何其可也！”那韩子文是个穷儒，那有银子钻刺？十日后发出案来，只见公子富翁都占前列了。你道那韩师愈的名字却在那里？正是：“似‘王’无一竖，如‘川’却又眠。”曾有一首《黄莺儿》词，单道那三等的苦处：

    无辱又无荣，论文章是弟兄，鼓声到此如春梦。高才命穷，庸才运通，廪生到此便宜贡。且从容，一边站立，看别个赏花红。

那韩子文考了三等，气得目睁口呆。把那梁宗师乌龟亡八的骂了一场，不敢提起亲事，那王婆也不来说了。只得勉强自解，叹口气道：

    娶妻莫恨无良媒，书中有女颜如玉。发落已毕，只得萧萧条条，仍旧去处馆，见了主人家及学生，都是面红耳热的，自觉没趣。

---
hexo 自带的语法：
iframe

在文章中插入 iframe。

{% iframe https://www.bing.com/ 80% 300px %}

Image

在文章中插入指定大小的图片。

{% img [class names] /images/test.jpg [width] [height] [title text [alt text]] %}

引用书上的句子

{% blockquote David Levithan, Wide Awake %}
Do not just seek happiness for yourself. Seek happiness for all. Through kindness. Through mercy.
{% endblockquote %}

引用 Twitter

{% blockquote @DevDocs https://twitter.com/devdocs/status/356095192085962752 %}
NEW: DevDocs now comes with syntax highlighting. http://devdocs.io
{% endblockquote %}

引用网络上的文章

{% blockquote Seth Godin http://sethgodin.typepad.com/seths_blog/2009/07/welcome-to-island-marketing.html Welcome to Island Marketing %}
Every interaction is both precious and an opportunity to delight.
{% endblockquote %}

{% codeblock %}
alert('Hello World!');
{% endcodeblock %}

{% codeblock lang:objc %}
[rectangle setX: 10 y: 10 width: 20 height: 20];
{% endcodeblock %}

{% codeblock Array.map %}
array.map(callback[, thisArg])
{% endcodeblock %}

{% codeblock _.compact http://underscorejs.org/#compact Underscore.js %}
_.compact([0, 1, false, 2, '', 3]);
=> [1, 2, 3]
{% endcodeblock %}
