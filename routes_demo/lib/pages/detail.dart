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
