import 'package:flutter/material.dart';
import '../config/index.dart';

class CircleDataModel {
  final String nickname;
  final String avatar;
  final String desc;
  final String photo;
  final String time;
  CircleDataModel({this.nickname, this.avatar, this.desc, this.photo, this.time});
}

class FriendCirclePage extends StatelessWidget {
  const FriendCirclePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CircleDataModel> dataList = [
      CircleDataModel(
          nickname: "周星驰",
          avatar: "image/banner.jpg",
          desc: "人没有理想,那和咸鱼有什么分别?",
          photo: "image/banner.jpg",
          time: "16:08:00"),
      CircleDataModel(
          nickname: "甄子丹",
          avatar: "image/banner.jpg",
          desc: "还有没有能打的? 我要打十个!!!",
          photo: "image/banner.jpg",
          time: "15:01:45"),
      CircleDataModel(
          nickname: "周星驰",
          avatar: "image/banner.jpg",
          desc: "人没有理想,那和咸鱼有什么分别?",
          photo: "image/banner.jpg",
          time: "16:08:00"),
      CircleDataModel(
          nickname: "甄子丹",
          avatar: "image/banner.jpg",
          desc: "还有没有能打的? 我要打十个!!!",
          photo: "image/banner.jpg",
          time: "15:01:45"),
    ];
    return Scaffold(
      appBar: createAppBar(context, "盆友圈"),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          CircleDataModel model = dataList[index];
          return CircleItemCell(model);
        },
      ),
    );
  }
}

class CircleItemCell extends StatelessWidget {
  final CircleDataModel dataModel;
  const CircleItemCell(this.dataModel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 50.0,
            height: 50.0,
            child: Image.asset(this.dataModel.avatar, fit: BoxFit.cover),
          ),
          SizedBox(width: 15.0),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(this.dataModel.nickname, style: TextStyle(color: Colors.blue[400], fontSize: 18.0)),
              SizedBox(height: 5.0),
              Text(this.dataModel.desc, style: TextStyle(color: Colors.black87, fontSize: 16.0)),
              SizedBox(height: 5.0),
              Image.asset(this.dataModel.photo, height: 200.0, width: 150.0, fit: BoxFit.fitHeight),
              SizedBox(height: 5.0),
              Text(this.dataModel.time, style: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ],
          )),
        ],
      ),
    );
  }
}
