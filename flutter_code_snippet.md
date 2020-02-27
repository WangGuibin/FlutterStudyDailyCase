[TOC]



# 学习`Flutter`的代码片段



目录索引列表如下:
=================

   * [学习Flutter的代码片段](#学习flutter的代码片段)
      * [1. TextWidget的使用](#1-textwidget的使用)
      * [2. Container容器组件的使用](#2-container容器组件的使用)
      * [3. ImageWidget的使用](#3-imagewidget的使用)
            * [网络图片加载](#网络图片加载)
            * [滤镜渲染相关](#滤镜渲染相关)
            * [图片平铺充满容器](#图片平铺充满容器)
      * [4. ListViewWidget列表组件](#4-listviewwidget列表组件)
            * [图片列表](#图片列表)
            * [混合cell实例](#混合cell实例)
            * [横向滚动列表并且自定义组件分离嵌套代码](#横向滚动列表并且自定义组件分离嵌套代码)
            * [动态列表的写法示例](#动态列表的写法示例)
      * [5. GridWidget网格布局组件](#5-gridwidget网格布局组件)
            * [GridView简单写法](#gridview简单写法)
            * [GridView另一种写法并加入图片](#gridview另一种写法并加入图片)
      * [6. RowWidget的使用](#6-rowwidget的使用)
      * [7. ColumnWidget的使用](#7-columnwidget的使用)
      * [8. StackWidget 堆叠/栈视图的使用](#8-stackwidget-堆叠栈视图的使用)
            * [Align的使用](#align的使用)
            * [Positioned的使用](#positioned的使用)
      * [9. CardWidget卡片布局](#9-cardwidget卡片布局)
      * [10.  导航和路由相关](#10--导航和路由相关)
            * [导航跳转/返回](#导航跳转返回)
            * [导航页面之间传值(正向传值)](#导航页面之间传值正向传值)
            * [导航页面反向传值(pop时回调传值)](#导航页面反向传值pop时回调传值)
            * [路由的基本使用](#路由的基本使用)
      * [11. AspectRatio调整宽高比例组件和Wrap流布局组件](#11-aspectratio调整宽高比例组件和wrap流布局组件)
            * [AspectRatio](#aspectratio)
            * [Wrap](#wrap)
            * [SizeBox](#sizebox)
      * [12. 有状态组件的示例](#12-有状态组件的示例)
      * [13.  BottomNavigationBar底部导航搭建](#13--bottomnavigationbar底部导航搭建)
      * [14.自定义AppBar](#14自定义appbar)
            * [仿头条tab顶部导航](#仿头条tab顶部导航)
      * [15. TabBarController的使用](#15-tabbarcontroller的使用)
      * [16. Drawer侧边栏的使用](#16-drawer侧边栏的使用)
      * [17.  常用的按钮组件](#17--常用的按钮组件)
            * [RaisedButton](#raisedbutton)
            * [RaisedButton.icon 图标按钮](#raisedbuttonicon-图标按钮)
            * [FlatButton](#flatbutton)
            * [IconButton](#iconbutton)
            * [OutlineButton](#outlinebutton)
            * [ButtonBar](#buttonbar)
            * [FloatingActionButton](#floatingactionbutton)
            * [自定义按钮组件](#自定义按钮组件)
      * [18. 文本输入框相关](#18-文本输入框相关)
            * [Textfield的基本使用](#textfield的基本使用)
      * [19. Checkbox,Radio等相关组件的使用](#19-checkboxradio等相关组件的使用)
      * [20. 第三方库的引用](#20-第三方库的引用)
      * [21. 日期选择组件](#21-日期选择组件)
      * [22. 轮播组件](#22-轮播组件)
      * [23. Dialog弹窗相关组件用法](#23-dialog弹窗相关组件用法)
            * [自定义Dialog](#自定义dialog)
      * [24. 网络请求相关](#24-网络请求相关)
            * [使用Dart搭建本地webServer 服务](#使用dart搭建本地webserver-服务)
            * [网络请求库http的简单使用](#网络请求库http的简单使用)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc)







## 1. `TextWidget`的使用

```dart
Text('牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!牛逼了老铁!!!',
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize:25.0,
            color:Color.fromARGB(255, 255, 100, 100),
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: Colors.pink
          ),
         ),
```

## 2. `Container`容器组件的使用

```dart
 Container(
            child: Text(
              "老铁牛了逼了厉害了!!!老铁牛了逼了厉害了!!!老铁牛了逼了厉害了!!!",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.yellow,
                decoration: TextDecoration.underline,
                decorationColor: Colors.pink,
                decorationStyle: TextDecorationStyle.solid
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.fade
            ),
            // width: 300.0,
            // height: 500.0,
            alignment: Alignment.topLeft,
            // color: Colors.lightBlue,
            // margin:EdgeInsets.symmetric(vertical: 100.0,horizontal: 20.0),
            margin:EdgeInsets.fromLTRB(30.0,50.0,30.0,200.0),
            padding: const EdgeInsets.all(100.0),
            //渐变背景 和 背景色不能同时存在 会冲突
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.green,
                  Colors.red
                ]
              )
            ),
          )
```

## 3. `ImageWidget`的使用
#### 网络图片加载

```dart
Container(
            child:Image.network(
              'https://img.mukewang.com/5de0b94d0982077300000000.jpg',
              scale: 2.0,
              fit: BoxFit.contain,//图片拉伸/平铺/自适应等模式 
              // color: Colors.red,
            ), 
            width: 300.0,
            height: 300.0,
            color: Colors.greenAccent,
          )
```
#### 滤镜渲染相关
```dart
Container(
            child:Image.network(
              'https://img.mukewang.com/5de0b94d0982077300000000.jpg',
              scale: 2.0,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.exclusion,
            ), 
            width: 300.0,
            height: 300.0,
            color: Colors.greenAccent,
          )
```
#### 图片平铺充满容器
```dart
Container(
            child:Image.network(
              'https://img.mukewang.com/5de0b94d0982077300000000.jpg',
              scale: 2.0,
              repeat: ImageRepeat.repeat,//枚举不同的平铺方式
            ), 
            width: 300.0,
            height: 300.0,
            color: Colors.greenAccent,
          )
```

## 4. `ListViewWidget`列表组件
#### 图片列表
```dart
Scaffold(
        appBar: AppBar(
          title: new Text("列表组件学习")
        ),
        body: new ListView(
          children: <Widget>[
              new Image.network('https://img1.mukewang.com/5ce4b199083e469306000338-240-135.jpg',fit: BoxFit.fill),
              new Image.network('https://img2.mukewang.com/5dfc2e870902f80d06000338-240-135.png',fit: BoxFit.fill),
              new Image.network('https://img4.mukewang.com/5e1c0ef609ca932612000676-240-135.png',fit: BoxFit.fill),
              new Image.network('https://img2.mukewang.com/5e40bf28099afe9906000338-240-135.png',fit: BoxFit.fill),
              new Image.network('https://img.mukewang.com/5df83ddd0964c97212000676-240-135.png',fit: BoxFit.fill),
              new Image.network('https://img2.mukewang.com/5dce250e08058e9c06000338-240-135.jpg',fit: BoxFit.fill),
              new Image.network('https://img1.mukewang.com/5dd7561309f8ae4806000338-240-135.png',fit: BoxFit.fill),
          ],
        ),
      )
```
#### 混合cell实例
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter列表的构建",
      home: Scaffold(
        appBar: AppBar(
          title: new Text("列表组件学习")
        ),
        body: new ListView(
          children: <Widget>[
          new Image.network('https://img1.mukewang.com/5ce4b199083e469306000338-240-135.jpg',fit: BoxFit.fill),
          new Icon(Icons.apps,color: Colors.pinkAccent),
          new Text("我只是一个文本"),
          new Text("假装只是一个文本",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 30.0,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dashed
          ),
          ),
            new Text("假装只是一个文本",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 40.0,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.orange,
            decorationStyle: TextDecorationStyle.solid
          ),
          ),
            new Text("假装只是一个文本",
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.cyanAccent,
            fontSize: 20.0,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.yellow,
            decorationStyle: TextDecorationStyle.dotted
          ),
          ),
          ],
        ),
      ),
    );
  }
}

```
#### 横向滚动列表并且自定义组件分离嵌套代码
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter列表的构建",
      home: Scaffold(
        appBar: AppBar(
          title: new Text("列表组件学习")
        ),
        body: Center(
          child: Container(
            height: 200.0,
            child: MyList()
          ),
        )
      ),
    );
  }
}

//自定义组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  width: 180.0,
                  color: Colors.lightBlue,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.orangeAccent,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.yellowAccent,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.greenAccent,
                ),
              ],            
    );
  }
}
```
#### 动态列表的写法示例
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items:new List<String>.generate(1000,(i)=>"item $i")
));

class MyApp extends StatelessWidget{
  final List<String>items; 
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter列表的构建",
      home: Scaffold(
        appBar: AppBar(
          title: new Text("列表组件学习")
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              "${items[index]}"
            ),
          );
         },
        ),
      ),
    );
  }
}
```
## 5. `GridWidget`网格布局组件

#### `GridView`简单写法
```dart
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 20.0,
          crossAxisCount: 3,
          children: <Widget>[
            const Text("哈哈哈哈哈哈"),
            const Text("哈哈哈哈哈哈"),
            const Text("哈哈哈哈哈哈"),
            const Text("哈哈哈哈哈哈"),
            const Text("哈哈哈哈哈哈"),
            const Text("哈哈哈哈哈哈"),
          ],
        ),
      ),
    );
  }
}

```
#### `GridView`另一种写法并加入图片
```dart
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,//一行几个
            mainAxisSpacing: 2.0,//主轴间隙
            crossAxisSpacing: 2.0,//交叉轴间隙
            childAspectRatio: 0.75 //宽高比例 
          ),
          children: <Widget>[
            new Image.network("http://img5.mtime.cn/mg/2019/12/06/151725.72056401_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/27/102157.68986647_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/27/101620.49593666_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/16/102340.68068947_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2020/01/16/151219.82587599_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/16/160312.57013739_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/09/170926.23949705_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/27/101324.51348949_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/06/151725.72056401_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/27/102157.68986647_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/27/101620.49593666_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/16/102340.68068947_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2020/01/16/151219.82587599_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/16/160312.57013739_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/09/170926.23949705_170X256X4.jpg",fit: BoxFit.cover),
            new Image.network("http://img5.mtime.cn/mg/2019/12/27/101324.51348949_170X256X4.jpg",fit: BoxFit.cover)

          ],
        ),
      ),
    );
  }
}
```

## 6. `RowWidget`的使用

```dart
//一般与容器组件结合使用
Row(
            children: <Widget>[
              //Expanded是撑开布局的一层包装
              Expanded(child:Icon(Icons.headset,color: Colors.greenAccent)),
              Expanded(child:Text("酷狗🎵",style: TextStyle(backgroundColor: Colors.lightBlue))),
              Expanded(child:Text("我爱❤️我家",style: TextStyle(backgroundColor: Colors.deepOrange)))
            ],
            mainAxisSize: MainAxisSize.min, //主轴的size
            crossAxisAlignment: CrossAxisAlignment.center,//交叉轴对齐方式
            mainAxisAlignment: MainAxisAlignment.center,//主轴轴对齐方式
          )
```



## 7. `ColumnWidget`的使用

```dart
//使用方法与Row类似
Column(
            children: <Widget>[
              Text("我爱❤️我家",style: TextStyle(backgroundColor: Colors.deepOrange)),
              Expanded(child:Icon(Icons.headset,color: Colors.greenAccent)),
              Text("酷狗🎵",style: TextStyle(backgroundColor: Colors.lightBlue))
            ],
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          )
```



## 8. `StackWidget` 堆叠/栈视图的使用

```dart
import 'dart:ffi';
import 'package:flutter/material.dart';
 
void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  var stack = new Stack(
    alignment: const FractionalOffset(0.5,0.8),
    children: <Widget>[
      new CircleAvatar(
        backgroundImage: new NetworkImage('https://i0.hdslb.com/bfs/face/28dca5ff98f6c688b2b244ba5bf5f6208cf78ac2.jpg@150w_150h.jpg'),
        radius: 100.0
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.orangeAccent
        ),
        child: Text('CoderWGB工作室'),
        padding: const EdgeInsets.all(5.0)
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "测试一下",
      theme: ThemeData(primaryColor: Colors.orangeAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("真香警告⚠️"),
          // backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: stack
        ),
      ),
    );
  }
}

```



#### `Align`的使用

```dart
Container(
            color: Colors.red,
            width: 300.0,
            height: 300.0,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0, -1), //x,y的取值区间都是-1 ~ 1
                  child: Icon(Icons.open_with, color: Colors.blue),
                ),
                Align(
                  alignment: Alignment(0, 0), //x,y的取值区间都是-1 ~ 1
                  child: Icon(Icons.import_contacts, color: Colors.lightBlue),
                ),
                Align(
                  alignment: Alignment(1, 1), //x,y的取值区间都是-1 ~ 1
                  child: Icon(Icons.phone_iphone, color: Colors.blue),
                ),
                Align(
                  alignment: Alignment.topRight, //也提供枚举值
                  child: Icon(Icons.android, color: Colors.greenAccent),
                ),
              ],
            ),
          )
```



#### `Positioned`的使用

```dart
//一般超过三个子组件的时候使用 替代`alignment`的定位 
Stack(
    children: <Widget>[
      new CircleAvatar(
        // backgroundColor: Colors.orangeAccent,
        backgroundImage: new NetworkImage('https://i0.hdslb.com/bfs/face/28dca5ff98f6c688b2b244ba5bf5f6208cf78ac2.jpg@150w_150h.jpg'),
        radius: 100.0
      ),
      Positioned(
        top: 10.0,
        left: 10.0,
        child: Text('左上角'),
      ),
      Positioned(
        top: 10.0,
        right: 10.0,
        child: Text('右上角'),
      ),
      Positioned(
        bottom: 10.0,
        left: 10.0,
        child: Text('左下角'),
      ),
      Positioned(
        bottom: 10.0,
        right: 10.0, 
        child: Text('右下角'),
      ),
    ],
  )
```



## 9. `CardWidget`卡片布局

```dart
Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("中国加油!武汉加油💪!",style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("电话: 0797-28780XX"),
            leading: Icon(Icons.phone_android),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            title: Text("中国加油!武汉加油💪!",style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("手机号: 13058086666"),
            leading: Icon(Icons.phone),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            title: Text("中国加油!武汉加油💪!",style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("email: 0x00@163.com"),
            leading: Icon(Icons.email),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
    )
```



## 10.  导航和路由相关

#### 导航跳转/返回

```dart
import 'package:flutter/material.dart';
 
void main() => runApp(MaterialApp(
  title: "导航演示",
  home: FirstScreen(),
));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航Demo")),
        body: Center(
          child: RaisedButton(
            child: Text("跳转页面"),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => SecondScreen()
              ));
            },
          ),
        ),
    );
  }
}

class  SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面2"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回上一个页面"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
```

#### 导航页面之间传值(正向传值)

```dart
import 'package:flutter/material.dart';
 
//定义一个类
class Product {
  final String title;
  final String desc;
  Product(this.title,this.desc);
}

void main() => runApp(MaterialApp(
  title: "导航演示",
  home: ProductListPage(products:List.generate(100,(index)=>Product("商品$index","这是一个商品描述$index"))),
));

class ProductListPage extends StatelessWidget {
  //定义一个接收参数的list
  final List<Product> products; 
  ProductListPage({Key key,@required this.products}) : super(key:key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder:(context,index){
        return ListTile(
          title: Text(products[index].title),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(
              builder: (context)=>ProductDetail(product: products[index])
            ));
          },
        );
       },
      ),
    );
  }
}

 class ProductDetail extends StatelessWidget {
   final Product product;
   ProductDetail({Key key,@required this.product}):super(key:key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title:Text('${product.title}')),
       body: Center(child: Text('${product.desc}'),),
     );
   }
 }
```



#### 导航页面反向传值(`pop`时回调传值)

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "测试页面参数回调",
  home: FirstPage(),
));

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个页面"),
        ),
        body: Center(
          child: RouteButton(),
        ),
      );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("点击按钮"),
      onPressed: (){
        _getInfoResult(context);
      },
    );
  }

  //异步方法获得回调参数
  _getInfoResult(BuildContext context) async {
    //定义一个阻塞等待的结果 push的时候去监听 pop回来的时候参数会带回来 使用SnackBar(类似于提示消息HUD)展示
    final result = await Navigator.push(context,
    MaterialPageRoute(builder:(context)=>ResultCallBackPage()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class ResultCallBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("选择参数值页面"),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(child: Text("参数1: 666666"),onPressed: (){
              Navigator.pop(context,"我是参数一 {first : 666666}");//第二个参数即为回传参数
            }),
            RaisedButton(child: Text("参数2: 88888888"),onPressed: (){
              Navigator.pop(context,"我是参数二 {second : 88888888}");//第二个参数即为回传参数
            }),
          ],
        ),
      ),
    );
  }
}

```



####  路由的基本使用

```dart
//main.dart
import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

//routes.dart

import 'package:flutter/material.dart';
import 'package:routes_demo/pages/goods.dart';
import 'package:routes_demo/pages/home.dart';
import 'package:routes_demo/pages/search.dart';
import 'tabbar.dart';
import './pages/detail.dart';

final Map<String, Function> routes = {
  '/': (context, {arguments}) => TabBarPageVC(),
  '/home': (context, {arguments}) => HomePage(),
  '/goods': (context, {arguments}) => GoodsPage(),
  '/detail': (context, {arguments}) => DetailPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments)
};

//命名路由传参的固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
    return route;
  }
};

//tabbar.dart

import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/goods.dart';
import './pages/search.dart';

class TabBarPageVC extends StatefulWidget {
  TabBarPageVC({Key key}) : super(key: key);

  @override
  _TabBarPageVCState createState() => _TabBarPageVCState();
}

class _TabBarPageVCState extends State<TabBarPageVC> {
  int selectIndex = 0;
  final List<Widget> modules = [
    HomePage(),
    GoodsPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("路由组件")),
      body: this.modules[this.selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.selectIndex,
        onTap: (int index) {
          setState(() {
            this.selectIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.store), title: Text("商品")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
        ],
      ),
    );
  }
}

//home.dart

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("路由跳转至搜索页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/search', arguments: {"name": "命名路由传参", "id": "home -> search"});
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text("路由跳转商品页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/goods', arguments: {});
              },
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("路由跳转商品详情页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/detail', arguments: {'id': 'home -> detail'});
              },
            )
          ],
        ),
      ),
    );
  }
}



//goods.dart
import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  GoodsPage({Key key}) : super(key: key);

  @override
  _GoodsPageState createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("点击按钮替换路由"),
          onPressed: () {
                       //替换路由的两种方式:
            // Navigator.of(context).pushReplacementNamed("/detail",
            //     arguments: {"id": "replace替换路由切换页面 goods -> detail,goods销毁,detail代替该层级"});
            Navigator.pushReplacementNamed(context, '/detail',
                arguments: {"id": "replace替换路由切换页面 goods -> detail,goods销毁,detail代替该层级"});

          },
        ),
      ),
    );
  }
}


//detail.dart
import 'package:flutter/material.dart';
import 'package:routes_demo/tabbar.dart';

class DetailPage extends StatelessWidget {
  var arguments;
  DetailPage({Key key, this.arguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("接收参数: ${this.arguments != null ? this.arguments['id'] : '0'} \n 点击返回根路由"),
            onPressed: () {
              //返回根路由
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new TabBarPageVC()), (route) => route == null);
            },
          ),
        ));
  }
}

//search.dart
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Map arguments; //可选参数
  SearchPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
              "接收参数: ${this.arguments != null ? this.arguments['name'] : '并未传参'} ${this.arguments != null ? this.arguments['id'] : '0'}  \n点击按钮跳转详情页"),
          onPressed: () {
            Navigator.pushNamed(context, '/detail', arguments: {"id": "search -> detail"});
          },
        ),
      ),
    );
  }
}



```



## 11. `AspectRatio`调整宽高比例组件和`Wrap`流布局组件

#### AspectRatio

```dart
AspectRatio(
        aspectRatio: 4.0 / 1.0,
        child: Container(color: Colors.orange),
      )
```

#### Wrap

```dart
Container(
              padding: EdgeInsets.all(15.0), //容器内边距
              child: Wrap(
                spacing: 10.0, //左右间距
                runAlignment: WrapAlignment.start, //布局对齐方式
                runSpacing: 10.0, //布局间距
                textDirection: TextDirection.ltr, //从左到右布局
                verticalDirection: VerticalDirection.down, //方向
                crossAxisAlignment: WrapCrossAlignment.start, //交叉轴的对齐方式
                children: <Widget>[
                  MyButton("第1集"),
                  MyButton("第2集"),
                  MyButton("第3集"),
                  MyButton("第4集"),
                  MyButton("第5集"),
                  MyButton("第6集"),
                  MyButton("第7集"),
                  MyButton("第8集"),
                  MyButton("第9集"),
                  MyButton("第10集"),
                  MyButton("第11集"),
                  MyButton("第12集"),
                ],
              ),
            )
```

#### `SizeBox`

```dart
SizedBox(width: 100.0, height: 100.0, child: Text("你好!!")), //相当于弹簧或者占位用于调整布局的组件 都是可选参数 一般结合 Row Column Container ListView等组件使用,用于调整相对位置           
```

## 12. 有状态组件的示例

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "状态组件",
      home: Scaffold(appBar: AppBar(title: Text("状态组件")), body: FirstPage()),
    ));

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
            children: this.list.map((value) {
          return ListTile(title: Text(value));
        }).toList()),
        SizedBox(height: 20),
        RaisedButton(
            child: Text("Add数据项"),
            onPressed: () {
              setState(() {
                var item = "这是数据项" + this.list.length.toString() ?? "0";
                this.list.add(item);
                // this.list.add("这是数据项2");
              });
            })
      ],
    );
  }
}
```



## 13.  `BottomNavigationBar`底部导航搭建

```dart
import 'package:flutter/material.dart';
import '../home/home.dart';
import '../category/category.dart';
import '../find/find.dart';
import '../settings/settings.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  //默认选中第一个
  int _currentIndex = 0;
  //标题
  final List<String> titles = [
    "微信",
    "通讯录",
    "发现",
    "我",
  ];
  //图标
  final List<Icon> icons = [Icon(Icons.chat_bubble), Icon(Icons.contact_mail), Icon(Icons.search), Icon(Icons.person)];

  // 各模块页面 都是继承自状态组件
  final List<Widget> pages = [HomePage(), CategoryPage(), FindPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.titles[this._currentIndex])),
      body: pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          unselectedItemColor: Colors.grey,
          fixedColor: Colors.red, //选中颜色
          iconSize: 30.0, //icon大小
          type: BottomNavigationBarType.fixed, //大于等于4个item需要设置该属性
          items: List.generate(
              titles.length, (index) => BottomNavigationBarItem(icon: icons[index], title: Text(titles[index])))),
    );
  }
}

```

## 14.自定义`AppBar`

```dart
//隐藏Debug标识
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false, //隐藏Debug标识
    );
  }
}

//自定义AppBar
AppBar(
        title: Text("自定义AppBar"),
        centerTitle: true, //标题组件居中
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("菜单");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("搜索");
            },
          ),
        ],
        // bottom: ,//该属性一般放tabBar组件
      )

 
```

#### 仿头条tab顶部导航

```dart
import 'package:flutter/material.dart';

class TouTiaoTabPage extends StatelessWidget {
  const TouTiaoTabPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "推荐",
      "精选",
      "热门",
      "今日说法",
      "今天,我想谈个恋爱",
      "本地",
      "电影",
      "电视剧",
      "动漫",
      "鬼畜",
      "教育",
      "直播",
      "小视频",
      "新闻",
      "战疫请",
      "游戏",
      "资讯",
      "股票"
    ];
    return DefaultTabController(
      length: items.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("仿头条Tab导航效果"),
          bottom: TabBar(
            tabs: List.generate(items.length, (index) => Tab(text: items[index])),
            indicatorColor: Colors.lightBlue,
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label, //和文字等宽
            labelPadding: EdgeInsets.fromLTRB(15.0, 0, 15, 0),
            labelStyle: TextStyle(fontSize: 20.0),
            unselectedLabelStyle: TextStyle(fontSize: 18.0),
            indicatorWeight: 3.0,
            indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 6),
            isScrollable: true, //超过一屏时滚动
          ),
        ),
        body: TabBarView(
            children: List.generate(items.length, (listIndex) {
          return ListView(
            children: List.generate(30, (itemIndex) => ListTile(title: Text("${items[listIndex]}列表的item $itemIndex"))),
          );
        })),
      ),
    );
  }
}

```

## 15. `TabBarController`的使用

```dart
import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    //生命周期: 初始化函数
    super.initState();
    _tabController = TabController(vsync: this, length: 3);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabController的使用"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "推荐"),
            Tab(text: "热门"),
            Tab(text: "同城"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text("内容内容内容...")),
          Center(child: Text("内容内容内容...")),
          Center(child: Text("内容内容内容...")),
        ],
      ),
    );
  }
}

```

## 16. `Drawer`侧边栏的使用

```dart
//在`Scaffold`子组件里直接简单添加(默认会在导航栏生成对应一侧的菜单按钮) 至于层级看自己的选择 tabBar几个选项都可以调用的话 只能写在根页面的Scaffold里 反之写在对应的子页面即可
Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
              "按钮"),
          onPressed: () {},
        ),
      ),
     drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  //装饰侧滑菜单头部的一个组件 可自定义的组件
                  child: DrawerHeader(
                      child: Text("\n\n\n你好,Flutter!!!", style: TextStyle(color: Colors.yellow, fontSize: 25.0)),
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        image: DecorationImage(
                            image: NetworkImage('https://www.itying.com/images/flutter/2.png'), fit: BoxFit.cover),
                      )),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home, color: Colors.green),
              ),
              title: Text("首页"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.category, color: Colors.lightBlue),
              ),
              title: Text("分类"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.search, color: Colors.yellow),
              ),
              title: Text("发现"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person, color: Colors.pink),
              ),
              title: Text("我的"),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  //装饰侧滑菜单头部的一个组件 固定样式组件
                  child: UserAccountsDrawerHeader(
                      accountName: Text("CoderWGB"),
                      accountEmail: Text("864562082@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage('https://www.itying.com/images/flutter/5.png'),
                      ),
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        image: DecorationImage(
                            image: NetworkImage('https://www.itying.com/images/flutter/2.png'), fit: BoxFit.cover),
                      )))
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.home, color: Colors.green),
            ),
            title: Text("首页"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pop(); //隐藏侧边栏
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.category, color: Colors.lightBlue),
            ),
            title: Text("分类"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.search, color: Colors.yellow),
            ),
            title: Text("发现"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person, color: Colors.pink),
            ),
            title: Text("我的"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).pop(); //隐藏侧边栏
              Navigator.pushNamed(context, '/user');
            },
          ),
        ],
      )),
    )
```



## 17.  常用的按钮组件

#### RaisedButton

```dart
RaisedButton(
                child: Text("颜色+阴影"),
                color: Colors.pink,
                textColor: Colors.white,
                elevation: 20.0,
                onPressed: () {},
                onLongPress: () {},
              )
  
  //圆角处理
  Container(
                height: 60.0,
                child: RaisedButton(
                    child: Text("圆角+波纹颜色+边框"),
                    splashColor: Colors.red,
                    color: Colors.brown,
                    textColor: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.red, width: 5.0, style: BorderStyle.solid))),
              )
  
  //圆形按钮
  Container(
                  height: 100.0,
                  child: RaisedButton(
                      child: Text("圆形按钮 + 边框"),
                      splashColor: Colors.red,
                      color: Colors.brown,
                      textColor: Colors.white,
                      onPressed: () {},
                      shape: CircleBorder(side: BorderSide(color: Colors.blue, width: 3.0, style: BorderStyle.solid)))

),
  
```

####  RaisedButton.icon 图标按钮

```dart
RaisedButton.icon(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.blue,
                ),
                label: Text("图标按钮"),
                onPressed: () {},
              )
```

#### FlatButton

```dart
FlatButton(child: Text("FlatButton"), color: Colors.green, onPressed: () {})
```



#### IconButton

```dart
AppBar(
        title: Text("常用的几种按钮组件"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {},
          ),
        ],
      )
```



#### OutlineButton

```dart
OutlineButton(child: Text("OutlineButton"), onPressed: () {})
```

#### ButtonBar

```dart
ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            buttonHeight: 44.0,
            children: <Widget>[
              RaisedButton(child: Text("RaisedButton"), onPressed: () {}),
              FlatButton(child: Text("FlatButton"), color: Colors.green, onPressed: () {}),
              IconButton(icon: Icon(Icons.add_alarm), iconSize: 30.0, onPressed: () {}),
              OutlineButton(child: Text("OutlineButton"), onPressed: () {}),
            ],
          ),
```

#### FloatingActionButton 

```dart
//类似闲鱼tabBar中间的➕按钮
//Scaffold组件的属性与AppBar同级
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle, size: 40.0),
        tooltip: "浮动按钮",
        foregroundColor: Colors.white,
        backgroundColor: Colors.yellow,
        onPressed: () {},
      ),
//不同枚举值表示不同位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
```



#### 自定义按钮组件

```dart
//自定义按钮
class MyCustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final BorderStyle borderStyle;

  MyCustomButton(
      {this.text = '',
      this.onPressed = null,
      this.width = 180.0,
      this.height = 40.0,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.borderColor = Colors.red,
      this.borderWidth = 1.0,
      this.borderRadius = 5.0,
      this.borderStyle = BorderStyle.none});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(
          this.text,
        ),
        textColor: this.textColor,
        color: this.backgroundColor,
        onPressed: this.onPressed,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: this.borderColor, width: this.borderWidth, style: this.borderStyle),
            borderRadius: BorderRadius.circular(this.borderRadius)),
      ),
    );
  }
}
```

## 18. 文本输入框相关

#### Textfield的基本使用

```dart
//可以使用TextEditingController 用于获取文本和设置文本初始值
//只获取文本 直接定义一个属性在onchange回调里接收即可
Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (String text) {},
                decoration:
                    InputDecoration(hintText: "请输入用户名", hintStyle: TextStyle(color: Colors.blue, fontSize: 20.0)),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (String text) {},
                keyboardType: TextInputType.phone,//键盘类型枚举
                decoration: InputDecoration(
                    border: OutlineInputBorder(),//边框
                    icon: Icon(Icons.phone_iphone),//图标
                    labelText: "手机号", //类似标题类型的placeholder
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 20.0)),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (String text) {},
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.security),
                    hintText: "请输入密码", //placeholder
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 20.0)),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (String text) {},
                maxLength: 200, //限制输入长度
                maxLines: 3, //多行输入
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.phone_iphone),
                    labelText: "用户名/手机号",
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 20.0)),
              ),
            ],
          ),
        )
```



## 19. Checkbox,Radio等相关组件的使用

```dart
import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  int sex;
  int pic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox和Radio相关组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: flag,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                },
                activeColor: Colors.green,
              ),
              SizedBox(width: 5.0),
              Text(this.flag ? "选中" : "未选中"),
            ],
          ),
          SizedBox(height: 5),
          CheckboxListTile(
              value: this.flag,
              onChanged: (value) {
                setState(() {
                  this.flag = value;
                });
              },
              activeColor: Colors.red,
              title: Text("CheckboxListTile"),
              subtitle: Text(this.flag ? "选中" : "未选中"),
              secondary: Icon(Icons.add_circle_outline)),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
              SizedBox(width: 5.0),
              Text("女"),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(this.sex == 1 ? "已选: 男" : "已选: 女"),
          SizedBox(height: 5),
          RadioListTile(
              value: 1,
              groupValue: this.pic,
              onChanged: (value) {
                setState(() {
                  this.pic = value;
                });
              },
              activeColor: Colors.red,
              title: Text("RadioListTile"),
              subtitle: Text("图片1"),
              secondary: Icon(Icons.add_circle_outline),
              selected: this.pic == 1),
          RadioListTile(
              value: 2,
              groupValue: this.pic,
              onChanged: (value) {
                setState(() {
                  this.pic = value;
                });
              },
              activeColor: Colors.red,
              title: Text("RadioListTile"),
              subtitle: Text("图片2"),
              secondary: Image.network('https://www.itying.com/images/flutter/2.png'),
              selected: this.pic == 2),
          SizedBox(height: 5),
          Text(this.pic == 1 ? "已选: 图片1" : "已选: 图片2"),
        ],
      ),
    );
  }
}

//框架自带的Switch太丑了 
Switch(
                value: this.switchOn,
                onChanged: (isOn) {
                  setState(() {
                    this.switchOn = isOn;
                  });
                },
              )

```



## 20. 第三方库的引用

```yaml
#在pubspec.yaml文件中编辑
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations: 
    sdk: flutter
	# 以下操作就是引入第三方库的方式
  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2 #苹果风格图标库引入
  date_format: ^1.0.8  #时间格式转换库
  flutter_cupertino_date_picker: ^1.0.12 #日期时间选择
  flutter_swiper: ^1.1.6 # 轮播组件
    
 # 完事之后cmd+s保存 VSCode自动帮下载依赖 不下载的话可执行 flutter pub get
 # 然后需要使用的地方引入头文件即可使用 

```



## 21. 日期选择组件

[日期选择组件文档](https://pub.dev/packages/flutter_cupertino_date_picker)

[日期时间格式化组件文档](https://pub.dev/packages/date_format)

```dart
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime currentDate;
  TimeOfDay currentTime;
  DateTime datePickerTime;

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
    currentTime = TimeOfDay(hour: 14, minute: 25);
    datePickerTime = DateTime.parse("2020-02-25");
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: this.currentDate,
      firstDate: DateTime(1970, 1, 1),
      lastDate: DateTime(2080, 12, 31),
    ).then((date) {
      setState(() {
        this.currentDate = date ?? this.currentDate;
      });
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: this.currentTime,
    );
    setState(() {
      this.currentTime = result ?? this.currentTime;
    });
  }

  _showCupertinoDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        // showTitle: true,
        // title: Text("${formatDate(this.datePickerTime, [yyyy, "-", mm, "-", dd])}"),
        confirm: Text('确定', style: TextStyle(color: Colors.blue)),
        cancel: Text('取消', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse("2000-05-12"),
      maxDateTime: DateTime.parse("2021-11-25"),
      initialDateTime: this.datePickerTime,
      dateFormat: "yyyy-MMMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- 已关闭 -----"),
      onCancel: () => print('已取消'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          this.datePickerTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          this.datePickerTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("日期时间组件"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      color: Colors.lightBlue,
                      size: 30.0,
                    ),
                    Text(formatDate(this.currentDate, [yyyy, "年", mm, "月", dd, "日"])),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker),
            SizedBox(height: 20.0),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.watch_later),
                  Text("${currentTime.format(context)}"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showTimePicker,
            ),
            SizedBox(height: 20.0),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.calendar_today),
                  Text("第三方苹果风格的日期选择组件${formatDate(this.datePickerTime, [yyyy, "-", mm, "-", dd])}"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showCupertinoDatePicker,
            )
          ],
        ));
  }
}

```



## 22. 轮播组件

[使用文档](https://github.com/best-flutter/flutter_swiper/blob/master/README-ZH.md#%E5%9F%BA%E6%9C%AC%E4%BD%BF%E7%94%A8)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//获取网络图片的快捷方法
String getExampleImageWithIndex(int index) {
  return "https://www.itying.com/images/flutter/${index + 1}.png";
}

class BannerPage extends StatefulWidget {
  BannerPage({Key key}) : super(key: key);

  @override
  _BannerPageState createState() => _BannerPageState();
}


class _BannerPageState extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("轮播组件")),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Swiper(
                loop: true, //循环滚动
                index: 0, //指定默认下标
                scrollDirection: Axis.horizontal, //滚动方向
                autoplay: true, //自动轮播
                duration: 3000, //滚动间隔 单位ms
                itemBuilder: (context, index) {
                  return Image.network(getExampleImageWithIndex(index), fit: BoxFit.cover);
                },
                itemCount: 5,
                pagination: SwiperPagination(), //小圆点
                control: SwiperControl(), //左右箭头
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Swiper(
                loop: true, //循环滚动
                index: 0, //指定默认下标
                scrollDirection: Axis.horizontal, //滚动方向
                autoplay: true, //自动轮播
                duration: 3000, //滚动间隔 单位ms
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    getExampleImageWithIndex(index),
                    fit: BoxFit.cover,
                  );
                },
                itemCount: 5,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(alignment: Alignment.topRight, builder: SwiperPagination.fraction), //下标展示
              ),
            ),
          ),
        ],
      ),
    );
  }
}

```



## 23. Dialog弹窗相关组件用法

```dart
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _showDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.lightBlue[100],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            title: Text("showDialog"),
            content: Text("这是一个弹窗,认真的弹窗!!!!"),
            actions: <Widget>[
              FlatButton(
                  textColor: Colors.white,
                  color: Colors.black,
                  child: Text("取消"),
                  onPressed: () {
                    Navigator.pop(context, "取消");
                  }),
              FlatButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("确定"),
                  onPressed: () {
                    Navigator.pop(context, "确定");
                  }),
            ],
          );
        });
    print("点击了$result");
  }

  _simpleDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("选择一项吧"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("钱💰"),
                onPressed: () {
                  Navigator.pop(context, "钱💰");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("美女👩"),
                onPressed: () {
                  Navigator.pop(context, "美女👩");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("车🚘"),
                onPressed: () {
                  Navigator.pop(context, "车🚘");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("房子🏡"),
                onPressed: () {
                  Navigator.pop(context, "房子🏡");
                },
              )
            ],
          );
        });
    print("选择了$res");
  }

  _bottomDialog() async {
    var selectIndex = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 250.0,
            child: Expanded(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.photo_camera),
                    title: Text("拍摄"),
                    onTap: () {
                      Navigator.pop(context, 1);
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text("从相册选"),
                    onTap: () {
                      Navigator.pop(context, 2);
                    },
                  ),
                  Divider(),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      child: Text("取消"),
                      onPressed: () {
                        Navigator.pop(context, 0);
                      },
                    )
                  ])
                  // ListTile(
                  //   title: Text("取消"),
                  //   onTap: () {
                  //     Navigator.pop(context, 0);
                  //   },
                  // ),
                ],
              ),
            ),
          );
        });
    print('点击了${["取消", "拍摄", "从相册选"][selectIndex]}');
  }

  _toastAlert() {
    //第三方库
    Fluttertoast.showToast(
        msg: "这是一条提示消息这是一条提示消息这是一条提示消息这是一条提示消息这是一条提示消息",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog弹窗相关组件")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("showDialog"),
              onPressed: _showDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("simpleDialog"),
              onPressed: _simpleDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("bottomDialog"),
              onPressed: _bottomDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("Toast"),
              onPressed: _toastAlert,
            ),
          ],
        ),
      ),
    );
  }
}

```

#### 自定义Dialog

```dart
//自定义Dialog
class MyDialog extends Dialog {
  final String title;
  final String contentText;
  final String cancelTitle;
  final String confirmTitle;
  final TextStyle cancelTextStyle;
  final TextStyle confirmTextStyle;
  final Function(int) onClickButtonCallBack;
  final Function onCloseCallBack;

  MyDialog(
      {this.title = "温馨提示",
      this.contentText = "提示内容为空,请设置提示内容",
      this.cancelTitle = "取消",
      this.confirmTitle = "确认",
      this.cancelTextStyle,
      this.confirmTextStyle,
      this.onClickButtonCallBack,
      this.onCloseCallBack});

  @override
  Widget build(BuildContext context) {
    //调用定时器⏲
    // Timer.periodic(Duration(milliseconds: 3000), (t) {
    //   Navigator.pop(context); //3秒后自动关闭弹窗
    //   t.cancel(); //取消定时器
    // });

    return Material(
      type: MaterialType.transparency, //透明的蒙版
      child: Center(
          child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 280.0,
        width: 300.0,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "${this.title}",
                        style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Icon(Icons.close, size: 20.0, color: Colors.black54),
                        onTap: () {
                          Navigator.pop(context);
                          this.onCloseCallBack();
                        },
                      ),
                    ),
                  ],
                )),
            Divider(),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("${this.contentText}", style: TextStyle(color: Colors.lightBlue, fontSize: 17.0)),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.black54,
                  child: Text(
                    this.cancelTitle,
                    style: this.cancelTextStyle ?? TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    this.onClickButtonCallBack(0);
                    this.onCloseCallBack();
                  },
                ),
                SizedBox(width: 30.0),
                FlatButton(
                  color: Colors.lightBlue,
                  child: Text(
                    this.confirmTitle,
                    style: this.confirmTextStyle ?? TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    this.onClickButtonCallBack(1);
                    this.onCloseCallBack();
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

```



## 24. 网络请求相关

#### 使用Dart搭建本地webServer 服务

1. 采用第三方库`http_server` ,新建一个`pubspec.yaml`配置文件,保存下载库依赖即可

   ```yaml
   name: dart_website
   description: A dart Server project.
   dependencies:
     http_server: ^0.9.8
   ```

2. 新建一个.vscode/launch.json配置文件(重要)

```json
  {
    "version": "0.2.0",
    "configurations": [{
        "name": "Dart",
        "program": "main.dart",
        "request": "launch",
        "type": "dart"
    }]
}
```

3. 新建一个main.dart开始写代码

     ```dart
import 'dart:async';
import 'dart:convert';
import 'dart:io';

var products = {
  "data":[
    {
     "name" : "苹果手机",
    "price":6666
    },
     {
     "name" : "Mac",
    "price":18666
    },
  ]
};

var news = {
  "data":[
    {
     "title" : "新闻头条",
    "desc":"哈上司是你们躲猫猫"
    },
     {
     "title" : "新闻头条",
    "desc":"哈上司是你们躲猫猫"
    }
  ]
};



main() async {
  //设置本地ip和端口
  var requestServer = await HttpServer.bind("192.168.0.104", 8089);
  print("Dart server 已启动");

  await for (HttpRequest request in requestServer) {
    handleMessage(request);
  }
  ;
}

void handleMessage(HttpRequest request) {
  try {
    if (request.method == "GET") {
      handleGET(request);
    } else if (request.method == "POST") {
      handlePOST(request);
    }
  } catch (e) {
    print("捕获了一个异常$e");
  }
}

void handleGET(HttpRequest request) {
  //直接获取url上的参数
  var action = request.uri.queryParameters["action"];
  if (action == "getProducts") {
    request.response
      ..statusCode = HttpStatus.OK
      ..write(JSON.encode(products))
      ..close();
  }

  if (action == "getNews") {
    request.response
      ..statusCode = HttpStatus.OK
      ..write(JSON.encode(news))
      ..close();
  }
}

void handlePOST(HttpRequest request) {
  request.response
    ..statusCode = HttpStatus.OK
    ..write(JSON.encode(news))
    ..close();
}

     ```



#### 网络请求库http的简单使用

```dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpRequestPage extends StatefulWidget {
  HttpRequestPage({Key key}) : super(key: key);

  @override
  _HttpRequestPageState createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> {
  var address;
  var body;
  var method;
  var result;
  var _textCtrl = TextEditingController();
  var _displayCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    address = "http://192.168.0.104:8089/?action=getProducts";
    _textCtrl.text = address;
    body = "";
    method = 1;
  }

  _getDataRequest() async {
    if (this.method == 1) {
      var res = await http.get(address);
      print('Response status: ${res.statusCode}');
      print('Response body: ${res.body}');
      setState(() {
        this.result = res.body;
        this._displayCtrl.text = res.body;
      });
    } else {
      var res = await http.post(address, body: this.body);
      print(this.body);
      print('Response status: ${res.statusCode}');
      print('Response body: ${res.body}');
      setState(() {
        this.result = res.body;
        this._displayCtrl.text = res.body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求示例"),
        actions: <Widget>[
          RaisedButton.icon(
            color: Colors.transparent,
            textColor: Colors.white,
            icon: Icon(Icons.keyboard),
            label: Text("✋收键盘⌨️"),
            onPressed: () {
              //收起键盘
              FocusScope.of(context).requestFocus(new FocusNode());
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _textCtrl,
              decoration: InputDecoration(labelText: "输入URL地址", border: OutlineInputBorder()),
              onChanged: (v) {
                setState(() {
                  this.address = v;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(labelText: "请输入参数", border: OutlineInputBorder()),
              onChanged: (v) {
                setState(() {
                  this.body = jsonEncode(v);
                });
              },
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("GET"),
                Radio(
                  value: 1,
                  groupValue: this.method,
                  onChanged: (value) {
                    setState(() {
                      this.method = value;
                    });
                  },
                ),
                SizedBox(width: 5.0),
                Text("POST"),
                Radio(
                  value: 2,
                  groupValue: this.method,
                  onChanged: (value) {
                    setState(() {
                      this.method = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("提交参数 发起请求"),
              onPressed: _getDataRequest,
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _displayCtrl,
              maxLines: 8,
              decoration: InputDecoration(labelText: "展示请求结果", border: OutlineInputBorder()),
              onChanged: (v) {},
            ),
          ],
        ),
      ),
    );
  }
}

```



