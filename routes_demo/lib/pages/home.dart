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
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("路由跳转自定义AppBar页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/customAppBar', arguments: {});
              },
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("路由跳转仿头条Tab导航页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/toutiaoTab', arguments: {});
              },
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("跳转基于TabBarController的Tab导航页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/tabBarVCDemo', arguments: {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
