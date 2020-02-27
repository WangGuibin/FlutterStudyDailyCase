import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  int sex;
  int pic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox和Radio相关组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: flag,
                onChanged: (value) {
                  setState(() {
                    this.flag = value;
                  });
                },
                activeColor: Colors.green,
              ),
              SizedBox(width: 5.0),
              Text(this.flag ? "选中" : "未选中"),
            ],
          ),
          SizedBox(height: 5),
          CheckboxListTile(
              value: this.flag,
              onChanged: (value) {
                setState(() {
                  this.flag = value;
                });
              },
              activeColor: Colors.red,
              title: Text("CheckboxListTile"),
              subtitle: Text(this.flag ? "选中" : "未选中"),
              secondary: Icon(Icons.add_circle_outline)),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
              SizedBox(width: 5.0),
              Text("女"),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(this.sex == 1 ? "已选: 男" : "已选: 女"),
          SizedBox(height: 5),
          RadioListTile(
              value: 1,
              groupValue: this.pic,
              onChanged: (value) {
                setState(() {
                  this.pic = value;
                });
              },
              activeColor: Colors.red,
              title: Text("RadioListTile"),
              subtitle: Text("图片1"),
              secondary: Icon(Icons.add_circle_outline),
              selected: this.pic == 1),
          RadioListTile(
              value: 2,
              groupValue: this.pic,
              onChanged: (value) {
                setState(() {
                  this.pic = value;
                });
              },
              activeColor: Colors.red,
              title: Text("RadioListTile"),
              subtitle: Text("图片2"),
              secondary: Image.network('https://www.itying.com/images/flutter/2.png'),
              selected: this.pic == 2),
          SizedBox(height: 5),
          Text(this.pic == 1 ? "已选: 图片1" : "已选: 图片2"),
        ],
      ),
    );
  }
}
