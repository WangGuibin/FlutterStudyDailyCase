import 'package:flutter/material.dart';
//app入口 函数
void main() => runApp(MyApp());

//app类似于根控制器 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // `Widget`是小部件的意思 
  @override
  Widget build(BuildContext context) {
    //整个app的样式主题等设置
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter起手式学习'),
    );
  }
}

//首页
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  //创建一个首页的状态管理 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //定义计数变量
  int _counter = 0;

//计数回调方法
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //子组件里两个文本居中布局
            Text(
              '你可以点击加号按钮增加计数:',
              style: Theme.of(context).textTheme.title,
          
            ),
            Text(
              '$_counter',
              // style: Theme.of(context).textTheme.display4,
              style: TextStyle(
                color: Colors.orange,
                fontStyle: FontStyle.normal,
                fontSize: 40,
              ),
            ),
            //再加一个文本
            Text(
              'hello world！！！',//文本内容
              style: TextStyle(
                color: Colors.red,//颜色
                fontSize: 18,//字体大小
                fontWeight: FontWeight.bold,//字体粗细
              ),
              
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,//点击回调方法名
        tooltip: 'Increment',//长按出提示
        child: Icon(
        Icons.refresh,//图标类型
        color: Colors.white,//图标颜色
        size: 40.0,//图标大小
        semanticLabel: "这是一个按钮",//语义标签
        textDirection: TextDirection.rtl,),//图标
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
