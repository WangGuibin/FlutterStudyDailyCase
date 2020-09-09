import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//获取网络图片的快捷方法
String getExampleImageWithIndex(int index) {
  return "https://www.itying.com/images/flutter/${index + 1}.png";
}

class BannerPage extends StatefulWidget {
  BannerPage({Key key}) : super(key: key);

  @override
  _BannerPageState createState() => _BannerPageState();
}

///TODO: 需要写一个自由度高 可扩展的 banner组件
///FIXME: 哈哈哈哈哈哈 这个玩意儿
//! 这是一个banner第三方库
//https://github.com/best-flutter/flutter_swiper/blob/master/README-ZH.md#%E5%9F%BA%E6%9C%AC%E4%BD%BF%E7%94%A8
class _BannerPageState extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("轮播组件")),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Swiper(
                loop: true, //循环滚动
                index: 0, //指定默认下标
                scrollDirection: Axis.horizontal, //滚动方向
                autoplay: true, //自动轮播
                duration: 3000, //滚动间隔 单位ms
                itemBuilder: (context, index) {
                  return Image.network(getExampleImageWithIndex(index),
                      fit: BoxFit.cover);
                },
                itemCount: 5,
                pagination: SwiperPagination(), //小圆点
                control: SwiperControl(), //左右箭头
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Swiper(
                loop: true, //循环滚动
                index: 0, //指定默认下标
                scrollDirection: Axis.horizontal, //滚动方向
                autoplay: true, //自动轮播
                duration: 3000, //滚动间隔 单位ms
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    getExampleImageWithIndex(index),
                    fit: BoxFit.cover,
                  );
                },
                itemCount: 5,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(
                    alignment: Alignment.topRight,
                    builder: SwiperPagination.fraction), //下标展示
              ),
            ),
          ),
        ],
      ),
    );
  }
}
