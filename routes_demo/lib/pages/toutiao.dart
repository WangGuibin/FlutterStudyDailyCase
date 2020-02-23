import 'package:flutter/material.dart';

class TouTiaoTabPage extends StatelessWidget {
  const TouTiaoTabPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "推荐",
      "精选",
      "热门",
      "今日说法",
      "今天,我想谈个恋爱",
      "本地",
      "电影",
      "电视剧",
      "动漫",
      "鬼畜",
      "教育",
      "直播",
      "小视频",
      "新闻",
      "战疫请",
      "游戏",
      "资讯",
      "股票"
    ];
    return DefaultTabController(
      length: items.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("仿头条Tab导航效果"),
          bottom: TabBar(
            tabs: List.generate(items.length, (index) => Tab(text: items[index])),
            indicatorColor: Colors.lightBlue,
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label, //和文字等宽
            labelPadding: EdgeInsets.fromLTRB(15.0, 0, 15, 0),
            labelStyle: TextStyle(fontSize: 20.0),
            unselectedLabelStyle: TextStyle(fontSize: 18.0),
            indicatorWeight: 3.0,
            indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 6),
            isScrollable: true, //超过一屏时滚动
          ),
        ),
        body: TabBarView(
            children: List.generate(items.length, (listIndex) {
          return ListView(
            children: List.generate(30, (itemIndex) => ListTile(title: Text("${items[listIndex]}列表的item $itemIndex"))),
          );
        })),
      ),
    );
  }
}
