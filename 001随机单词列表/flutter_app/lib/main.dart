import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

 void main() =>runApp(new MyApp());
  class MyApp extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
    // TODO: implement build
    return  new MaterialApp(
              title: '首页',
              theme: new ThemeData(
                primaryColor: Colors.orange,
              ),
              home: new RandomWords(),
     );
    }
  }

class RandomWords extends StatefulWidget { 
  //扩展+增加状态管理 
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold ( //脚手架
      appBar: new AppBar( //导航栏
        title: new Text('类似于iOS的tableView'), 
        actions: <Widget>[ //添加跳转事件
        new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
      ], 
      leading: new IconButton(icon: new Icon(Icons.add),onPressed: _addAction,)), 
      body: _buildSuggestions(), //编译生成列表
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshAction,//点击回调方法名 
        tooltip: 'Increment',//长按出提示
        child: Icon(
        Icons.refresh,//图标类型
        color: Colors.white,//图标颜色
        size: 40.0,//图标大小
        semanticLabel: "这是一个按钮",//语义标签
        textDirection: TextDirection.rtl,),//图标
      ),
    );
  }

  final _suggestions = <WordPair>[]; //随机单词数组
  final _saved = new Set<WordPair>(); //存储一部分
  final _biggerFont = const TextStyle(fontSize: 18.0); //字体样式

  Widget _buildSuggestions() {
    return new ListView.builder(padding: const EdgeInsets.all(16.0), // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
        // 在偶数行，该函数会为单词对添加一个ListTile row.
        // 在奇数行，该行书湖添加一个分割线widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。
        itemBuilder: (context, i) { //类似于遍历循环
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) return new Divider();

          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
          final index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _suggestions.length) {
            // ...接着再生成10个单词对，然后添加到建议列表
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]); //返回cell
        });
  }

  Widget _buildRow(WordPair pair) {
    //cell
    final alreadySaved = _saved.contains(pair); //存储点击的状态
    return new ListTile(title: new Text(pair.asPascalCase, style: _biggerFont,), trailing: new Icon( //右边加一个爱心按钮 选中状态设置为红色
      alreadySaved ? Icons.favorite : Icons.favorite_border, color: alreadySaved ? Colors.red : null,), onTap: () { //添加手势交互
      setState(() {
        if (alreadySaved) {
          _saved.remove(pair); //移除
        } else {
          _saved.add(pair); //添加
        }
      });
    },);
  }

//加号按钮回调
void _addAction(){
  log("click add button");
}

  //刷新按钮回调事件
void _refreshAction(){
  log("click refresh button");
}

  //跳转页面: 收藏页面
  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final tiles = _saved.map( //数据源
            (pair) {
          return new ListTile(title: new Text(pair.asPascalCase, //驼峰式
            style: _biggerFont,),);
        },);
      final divided = ListTile.divideTiles(context: context, tiles: tiles,).toList();
      return new Scaffold(appBar: new AppBar(title: new Text('Saved Suggestions'),), body: new ListView(children: divided),);
    },),);
  }
}