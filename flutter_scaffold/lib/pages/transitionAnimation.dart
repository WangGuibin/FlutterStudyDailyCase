import 'package:flutter/material.dart';
import '../config/index.dart';

class PageTransitionAnimationPage extends StatelessWidget {
  const PageTransitionAnimationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "转场动画"),
      body: Center(
        child: RaisedButton(
          child: Text("点击转场"),
          onPressed: () {
            // Navigator.of(context).push(_createRouterTween());
            // Navigator.of(context).push(_createRouterCurveTween());
            Navigator.of(context).push(_createRouterCurveAnimationTween());
          },
        ),
      ),
    );
  }
}

Route _createRouterTween() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) => ShowAnimationResultPage(),
      transitionsBuilder: (context, animation, secondAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      });
}

Route _createRouterCurveTween() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) => ShowAnimationResultPage(),
      transitionsBuilder: (context, animation, secondAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        //淡入淡出 时快时慢
        var curve = Curves.easeInOut;
        // 联合两种Tween
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      });
}

Route _createRouterCurveAnimationTween() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) => ShowAnimationResultPage(),
      transitionsBuilder: (context, animation, secondAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });
}

class ShowAnimationResultPage extends StatelessWidget {
  const ShowAnimationResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, "转场动画展示结果页"),
      body: Center(
        child: Text("Hello World!"),
      ),
    );
  }
}
