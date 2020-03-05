import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  TextfieldPage({Key key}) : super(key: key);

  @override
  _TextfieldPageState createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  var inputTextField = TextEditingController();
  var currentText = "";
  bool switchOn = true;

  @override
  void initState() {
    super.initState();
    inputTextField.text = "初始值";
    currentText = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    var dateStr = formatDate(date, [yyyy, "-", mm, "-", dd]);
    return Scaffold(
        appBar: AppBar(title: Text("Textfield的使用")),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: inputTextField,
                onChanged: (String text) {
                  currentText = text; //暂存值 其实TextEditingController已经做了这个事
                },
                decoration:
                    InputDecoration(hintText: "请输入用户名", hintStyle: TextStyle(color: Colors.blue, fontSize: 20.0)),
              ),
              Container(
                child: RaisedButton(
                  child: Text("点击"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print(currentText);
                    print(inputTextField.text);
                  },
                ),
              ),
              SizedBox(height: 30),
              TextField(
                maxLength: 100,
                maxLines: 6,
                onChanged: (v) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "请输入一些文字...",
                  // icon: Icon(Icons.book),
                  // prefixIcon: Icon(Icons.markunread_mailbox),
                  // suffixIcon: Icon(Icons.folder_open)
                ),
              ),
              Switch(
                value: this.switchOn,
                onChanged: (isOn) {
                  setState(() {
                    this.switchOn = isOn;
                  });
                },
              ),
              CupertinoSwitch(
                value: this.switchOn,
                onChanged: (isOn) {
                  setState(() {
                    this.switchOn = isOn;
                  });
                },
                // activeColor: Colors.red[400],
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: Text(dateStr),
              )
            ],
          ),
        ));
  }
}
