# ModuleDemo
模块化demo

主要是OC和Swift混编导致的代码混乱问题,拆分原有公司项目是一个巨大的工作量,所以想先写个demo,把可能遇到的问题总结下.

* 一些宏定义和常量的定义
* oc和swift的类扩展
* oc的代码引用
* swift的代码引用

#### oc与swift的混编

demo用为模块添加``入口文件``的方式,处理oc与swift混编时,pod需要设置use_framework

#### 组件化路由内容

在demo中,路由的方式有4种
* NSClassFormString的简单映射
* CTMediator
* Lotusoot
* 自定义的简单协议路由


