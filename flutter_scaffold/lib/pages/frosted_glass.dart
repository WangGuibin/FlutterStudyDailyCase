import 'package:flutter/material.dart';
import 'dart:ui';
import '../config/index.dart';

/**
 * https://github.com/OpenFlutter/Flutter-Notebook/blob/master/mecury_project/example/frosted_glass_style_demo/lib/frosted_glass_demo.dart
 * 使用BackdropFilter实现毛玻璃效果,且子部件需要设置Opacity
 * 使用这个部件的代价很高，尽量少用
 * ImageFilter.blur的sigmaX/Y决定了毛玻璃的模糊程度，值越高越模糊
 * 一般来说，为了防止模糊效果绘制出边界，需要使用ClipRect Widget包裹
 */
class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: createAppBar(context, "毛玻璃效果"),
      body: new Stack(
        children: <Widget>[
          new ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: new FlutterLogo()),
          new Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Opacity(
                  opacity: 0.5,
                  child: new Container(
                    width: 250.0,
                    height: 200.0,
                    decoration: new BoxDecoration(
//                  color: Colors.grey.shade200.withOpacity(0.5),
                      color: Colors.grey.shade200,
                    ),
                    child: new Center(
                      child: new Text('毛玻璃',
                          style: Theme.of(context).textTheme.display3),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
