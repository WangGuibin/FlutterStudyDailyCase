import 'package:flutter/material.dart';
import '../config/index.dart';
import '../widgets/full_icon_button.dart';
import '../widgets/full_icon_text.dart';

class IndicatorPage extends StatelessWidget {
  const IndicatorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "自定义按钮和指示器"),
      body: Container(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          FullIconButton(
            onPressed: () {},
            label: Text("按钮"),
            topIcon: Text("上边⬆️"),
            leftIcon: Text("左边👈"),
            bottomIcon: Text("下边↓"),
            rightIcon: Text("右边👉"),
            splashColor: Colors.red,
            textColor: Colors.white,
            textPadding: EdgeInsets.all(20),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200.0,
            child: FullIconText(
              "这是一段文本\n哈哈哈哈哈哈",
              topIcon: Text("6666尬"),
              leftIcon: Text("哈哈哈哈嗝👈"),
              bottomIcon: Text("底部啊啊👇"),
              rightIcon: Text("失敬失敬"),
              margin: EdgeInsets.all(5.0),
            ),
          ),
          //加载指示器
          LinearProgressIndicator(
            backgroundColor: Colors.white70,
            valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
          ),
          SizedBox(height: 30),
          //进度条
          LinearProgressIndicator(
            value: 0.4,
            backgroundColor: Colors.white70,
            valueColor: AlwaysStoppedAnimation(Colors.lightBlue),
          ),
          SizedBox(height: 30.0),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.black26,
              valueColor: AlwaysStoppedAnimation(Colors.red),
              value: 0.75,
              strokeWidth: 10.0,
              semanticsLabel: "进度值:",
              semanticsValue: "75%",
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.orange,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              strokeWidth: 10.0,
            ),
          )
        ],
      )),
    );
  }
}
