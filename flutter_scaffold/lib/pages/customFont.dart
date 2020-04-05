import 'package:flutter/material.dart';
import '../config/index.dart';

class CustomFontPage extends StatelessWidget {
  const CustomFontPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "自定义字体"),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("这是一段文本测试",
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: "MyFont",
                    color: UIColor.redColor)),
            SizedBox(height: 20.0),
            Text("ABCDEFGHIJKLMN",
                style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: "MyFont",
                    color: UIColor.cyanColor)),
            SizedBox(height: 20.0),
            Text("012345678910",
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MyFont",
                    color: UIColor.orangeColor)),
            SizedBox(height: 20.0),
            Text("!@#aaaaaadfff%%%%&&***()",
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: "MyFont",
                    color: UIColor.deepOrangeColor)),
            SizedBox(height: 20.0),
            Text("ha无伤大雅",
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: "MyFont",
                    color: UIColor.lightBlueColor)),
            SizedBox(height: 20.0),
            Text("无边落木萧萧下",
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: "MyFont",
                    color: UIColor.yellowColor)),
            SizedBox(height: 20.0),
            Text("不尽长江滚滚来",
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: "MyFont",
                    color: UIColor.blueColor)),
          ],
        ),
      ),
    );
  }
}
