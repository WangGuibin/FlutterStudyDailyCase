import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpRequestPage extends StatefulWidget {
  HttpRequestPage({Key key}) : super(key: key);

  @override
  _HttpRequestPageState createState() => _HttpRequestPageState();
}

class _HttpRequestPageState extends State<HttpRequestPage> {
  var address;
  var body;
  var method;
  var result;
  var _textCtrl = TextEditingController();
  var _displayCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    address = "http://192.168.0.104:8089/?action=getProducts";
    _textCtrl.text = address;
    body = "";
    method = 1;
  }

  _getDataRequest() async {
    if (this.method == 1) {
      var res = await http.get(address);
      print('Response status: ${res.statusCode}');
      print('Response body: ${res.body}');
      setState(() {
        this.result = res.body;
        this._displayCtrl.text = res.body;
      });
    } else {
      var res = await http.post(address, body: this.body);
      print(this.body);
      print('Response status: ${res.statusCode}');
      print('Response body: ${res.body}');
      setState(() {
        this.result = res.body;
        this._displayCtrl.text = res.body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求示例"),
        actions: <Widget>[
          RaisedButton.icon(
            color: Colors.transparent,
            textColor: Colors.white,
            icon: Icon(Icons.keyboard),
            label: Text("✋收键盘⌨️"),
            onPressed: () {
              //收起键盘
              FocusScope.of(context).requestFocus(new FocusNode());
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _textCtrl,
              decoration: InputDecoration(labelText: "输入URL地址", border: OutlineInputBorder()),
              onChanged: (v) {
                setState(() {
                  this.address = v;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(labelText: "请输入参数", border: OutlineInputBorder()),
              onChanged: (v) {
                setState(() {
                  this.body = jsonEncode(v);
                });
              },
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("GET"),
                Radio(
                  value: 1,
                  groupValue: this.method,
                  onChanged: (value) {
                    setState(() {
                      this.method = value;
                    });
                  },
                ),
                SizedBox(width: 5.0),
                Text("POST"),
                Radio(
                  value: 2,
                  groupValue: this.method,
                  onChanged: (value) {
                    setState(() {
                      this.method = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text("提交参数 发起请求"),
              onPressed: _getDataRequest,
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: _displayCtrl,
              maxLines: 8,
              decoration: InputDecoration(labelText: "展示请求结果", border: OutlineInputBorder()),
              onChanged: (v) {},
            ),
          ],
        ),
      ),
    );
  }
}
