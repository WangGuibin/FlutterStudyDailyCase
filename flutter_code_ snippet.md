## 1. `TextWidget`的使用

```flutter
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

```flutter
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

```flutter
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
```flutter
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
```flutter
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
```flutter
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
```flutter
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
```flutter
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
```flutter
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
```flutter
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
```flutter
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


