# 如何用命令方块做一把“神剑"  
先从结论说起。指令如下：  

> /give @p diamond_sword 1 0 {AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:894654,UUIDMost:2872},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.2,Operation:1,UUIDLeast:894654,UUIDMost:2872}]}  

据说大多数的同学看到这里就可以下课了，但是我觉得还是有必要来对此探探幽，毕竟授之以鱼不如授之以渔，对吧？  

在探幽开始之前,我还是希望各位可以掌握一些json知识，掌握了json的语法后，便可以对这类以json为基础的系统有更加深刻的理解。这里推荐一下[W3cschool的json教程](http://www.w3school.com.cn/json/)

做出这种效果，使用的是minecraft一种名为属性的系统。  

现在，我们不妨将后面的json拆开，一探究竟。  

``` 
{  
  AttributeModifiers: [  
    {
      AttributeName: "generic.maxHealth",   
      Name: "generic.maxHealth",   
      Amount: 20,   
      Operation: 0,   
      UUIDLeast: 894654,   
      UUIDMost: 2872  
    },  
    .....
  ]  
  }  
```
看起来如云里雾里？别着急，毕竟大家都不是鸟人，看不懂鸟语也是很正常的，我们来用通俗易懂的话来聊聊它们都代表着什么。
```
{//这是json的固定开头格式。  
  AttributeModifiers: [//告诉minecraft从现在开始是属性部分  
    {//json的格式  
      AttributeName: "generic.maxHealth", //属性名，貌似必须与下面的名称吻合  
      Name: "generic.maxHealth", //名称，貌似必须与上方的属性名吻合  
      Amount: 20, //属性的量。作用效果与下方的运算模式有关。  
      Operation: 0, //运算模式。
      UUIDLeast: 894654, //UUID部分1  
      UUIDMost: 2872	   //UUID部分2  
    }//json的格式  
    .....//偷懒省略一段  
  ]//告诉minecraft属性部分到此为止  
}//这是json的固定结尾格式
```
*注.学过程序语言的同学可能会发现，我用了注释格式来说明。实际上json是不能使用这种格式的。*

### 属性名&名称

属性名及名称用来标注是哪种属性。我们这里刚好有一张对应的表格：

| 属性名&名称                      | 概述                                       | 默认值  | 最小值  | 最大值       |
| --------------------------- | ---------------------------------------- | ---- | ---- | --------- |
| generic.maxHealth           | 这个生物的最大[生命值](https://minecraft-zh.gamepedia.com/%E7%94%9F%E5%91%BD%E5%80%BC)；亦或这个[生物](https://minecraft-zh.gamepedia.com/%E7%94%9F%E7%89%A9)通过生命恢复最多可以恢复至的极限。 | 20   | 0.0  | 1.7x10308 |
| generic.followRange         | 这个生物追踪[玩家](https://minecraft-zh.gamepedia.com/%E7%8E%A9%E5%AE%B6)或者其他生物的最大范围，以方块数为单位。目标离开这个区域意味着它们将停止追踪。目前大多数[生物](https://minecraft-zh.gamepedia.com/%E7%94%9F%E7%89%A9)这个值为16，而[僵尸](https://minecraft-zh.gamepedia.com/%E5%83%B5%E5%B0%B8)则有40。 | 32   | 0.0  | 2048      |
| generic.knockbackResistance | 这个生物的抗击退效果（包括攻击的击退、爆炸和弹射物冲击）的程度，1.0代表完全抵抗。 | 0.0  | 0.0  | 1.0       |
| generic.movementSpeed       | 在某种不明度量标准下这个生物的速度。                       | 0.7* | 0.0  | 1.7x10308 |
| generic.attackDamage        | 普通攻击造成的伤害，一点表示半个心形标志。                    | 1.0  | 0.0  | 1.7x10308 |
| generic.armor               | 盔甲的防御点数。                                 | 0.0  | 0.0  | 30.0      |
| generic.armorToughness      | 盔甲韧性                                     | 0.0  | 0.0  | 20.0      |
讲白了就是，你想给物品加什么属性，就把左边那一排的东西中的一条放到那个位置。

### 属性的量

这个。。其实没什么好说的，就是摆弄属性时的那个数字。

### 运算模式

0为简单加法运算(如+20 最大生命),量就是加上的数值.

1为乘法运算(如+2000% 最大生命),量为你想乘进去的数值 

2为加乘法运算。就是乘以1+数值。

### 作用区域

这个很好理解。就是装备在哪里的时候可以起效果

只需要加一个json的值Slot,在冒号后跟槽位的名称即可。

槽位可以是：mainhand，offhand，head，legs，chest，feet




修改字符后，将多余的空格删去，便可以加入指令中使用了。  

(攥写者攥写本回答使用了部分来自于minecraft wiki的资料。在CC-BY-NC-SA 3.0协议下使用)  