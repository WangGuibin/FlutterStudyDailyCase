import 'package:flutter/material.dart';
import '../config/index.dart';

class ClickLikePage extends StatefulWidget {
  ClickLikePage({Key key}) : super(key: key);

  @override
  _ClickLikePageState createState() => _ClickLikePageState();
}

class _ClickLikePageState extends State<ClickLikePage> {
  bool isClicked = false;
  Color textColor = Colors.grey;

  _clickLikeAction() {
    this.isClicked = !this.isClicked;
    setState(() {
      if (this.isClicked) {
        this.textColor = Colors.red;
      } else {
        this.textColor = Colors.grey;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "老铁双击点个赞"),
      body: GestureDetector(
        onDoubleTap: _clickLikeAction,
        child: Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.orange,
            child: Center(
              child: Icon(Icons.favorite,
                  color: this.textColor,
                  size: 300.0,
                  semanticLabel: this.isClicked ? "取消点赞" : "点赞"),
            )),
      ),
    );
  }
}
