[TOC]

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



## 10.  导航相关

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

