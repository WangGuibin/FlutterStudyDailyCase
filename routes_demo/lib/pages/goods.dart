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
          child: Text("点击按钮替换当前路由"),
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
