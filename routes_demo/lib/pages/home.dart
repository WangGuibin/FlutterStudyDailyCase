import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePageModel {
  final String name;
  final String routeName;
  final Map<String, dynamic> args;
  HomePageModel(this.name, this.routeName, {this.args});
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<HomePageModel> dataList = [
      HomePageModel("路由跳转至搜索页面", "/search", args: {"name": "命名路由传参", "id": "home -> search"}),
      HomePageModel("路由跳转至商品页面", "/goods", args: {"name": "命名路由传参", "id": "home -> goods"}),
      HomePageModel("路由跳转至商品详情页面", "/detail", args: {'id': 'home -> detail'}),
      HomePageModel("路由跳转至自定义AppBar页面", "/customAppBar", args: {}),
      HomePageModel("仿头条Tab导航页面", "/toutiaoTab", args: {}),
      HomePageModel("基于TabBarController的Tab导航页面", "/tabBarVCDemo", args: {}),
      HomePageModel("常用的按钮组件", "/buttons", args: {}),
      HomePageModel("文本输入框组件", "/textfield", args: {}),
      HomePageModel("CheckBox和Radio相关组件", "/checkbox", args: {}),
      HomePageModel("日期时间选择组件", "/datePicker", args: {}),
      HomePageModel("轮播组件", "/banner", args: {}),
      HomePageModel("弹窗组件", "/dialog", args: {}),
      HomePageModel("网络请求", "/request", args: {}),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          HomePageModel model = dataList[index];
          return ListTile(
            title: Text(model.name),
            onTap: () {
              Navigator.of(context).pushNamed(model.routeName, arguments: model.args);
            },
          );
        },
      ),
    );
  }
}
