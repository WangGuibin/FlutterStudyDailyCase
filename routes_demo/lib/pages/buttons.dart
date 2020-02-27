import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatelessWidget {
  const ButtonWidgetPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("常用的几种按钮组件"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle, size: 40.0),
        tooltip: "浮动按钮",
        foregroundColor: Colors.white,
        backgroundColor: Colors.yellow,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: () {},
                onLongPress: () {},
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                child: Text("+颜色"),
                onPressed: () {},
                onLongPress: () {},
                color: Colors.lightBlue,
                textColor: Colors.white,
              ),
              SizedBox(width: 10.0),
              RaisedButton(
                child: Text("+阴影"),
                color: Colors.pink,
                textColor: Colors.white,
                elevation: 20.0,
                onPressed: () {},
                onLongPress: () {},
              ),
              SizedBox(width: 10.0),
              RaisedButton.icon(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.blue,
                ),
                label: Text("图标按钮"),
                onPressed: () {},
              )
            ],
          ),
          //自适应按钮
          Container(
            height: 60.0,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                  child: Text("扁平化按钮"),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                )),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60.0,
                child: RaisedButton(
                    child: Text("圆角+波纹颜色+边框"),
                    splashColor: Colors.red,
                    color: Colors.brown,
                    textColor: Colors.white,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.red, width: 5.0, style: BorderStyle.solid))),
              ),
              SizedBox(width: 10.0),
              Container(
                  height: 100.0,
                  child: RaisedButton(
                      child: Text("圆形按钮 + 边框"),
                      splashColor: Colors.red,
                      color: Colors.brown,
                      textColor: Colors.white,
                      onPressed: () {},
                      shape: CircleBorder(side: BorderSide(color: Colors.blue, width: 3.0, style: BorderStyle.solid)))),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0),
            child: AspectRatio(
              aspectRatio: 6.0 / 1.0,
              child: OutlineButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.orange,
                child: Text("OutlineButton"),
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            buttonHeight: 44.0,
            children: <Widget>[
              RaisedButton(child: Text("RaisedButton"), onPressed: () {}),
              FlatButton(child: Text("FlatButton"), color: Colors.green, onPressed: () {}),
              IconButton(icon: Icon(Icons.add_alarm), iconSize: 30.0, onPressed: () {}),
              OutlineButton(child: Text("OutlineButton"), onPressed: () {}),
            ],
          ),
          SizedBox(height: 10.0),
          MyCustomButton(text: "自定义按钮", onPressed: () {}),
          SizedBox(height: 10.0),
          MyCustomButton(
            text: "自定义按钮",
            onPressed: () {},
            textColor: Colors.red,
            backgroundColor: Colors.blueAccent,
          ),
          SizedBox(height: 10.0),
          MyCustomButton(
              text: "自定义按钮",
              width: 200.0,
              height: 50.0,
              borderStyle: BorderStyle.solid,
              borderColor: Colors.green,
              borderWidth: 3.0,
              borderRadius: 15.0,
              textColor: Colors.orange,
              backgroundColor: Colors.cyan,
              onPressed: () {}),
        ],
      ),
    );
  }
}

//自定义按钮
class MyCustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final BorderStyle borderStyle;

  MyCustomButton(
      {this.text = '',
      this.onPressed = null,
      this.width = 180.0,
      this.height = 40.0,
      this.textColor = Colors.white,
      this.backgroundColor = Colors.black,
      this.borderColor = Colors.red,
      this.borderWidth = 1.0,
      this.borderRadius = 5.0,
      this.borderStyle = BorderStyle.none});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(
          this.text,
        ),
        textColor: this.textColor,
        color: this.backgroundColor,
        onPressed: this.onPressed,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: this.borderColor, width: this.borderWidth, style: this.borderStyle),
            borderRadius: BorderRadius.circular(this.borderRadius)),
      ),
    );
  }
}
