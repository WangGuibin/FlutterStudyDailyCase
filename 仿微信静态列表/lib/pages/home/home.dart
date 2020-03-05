import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell(),
        Divider(height: 1.0, indent: 70.0, color: Colors.grey),
        HomeListCell()
      ],
    );
  }
}

class HomeListCell extends StatelessWidget {
  const HomeListCell({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 60.0,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Image.network(
                  'https://i0.hdslb.com/bfs/face/28dca5ff98f6c688b2b244ba5bf5f6208cf78ac2.jpg@150w_150h.jpg'),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("XXXX6群", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold)),
              Text("某群员:特斯拉", style: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w300)),
            ],
          )),
          Column(
            children: <Widget>[
              Text("12:30", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w300)),
              SizedBox(height: 15.0),
              Icon(
                Icons.headset_off,
                size: 10.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
