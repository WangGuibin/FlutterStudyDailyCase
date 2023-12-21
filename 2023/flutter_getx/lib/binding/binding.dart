import 'package:get/get.dart';
import '../controller/CountController.dart';
import '../controller/TabbarController.dart';

class AllControllerBinding extends Bindings {
  @override
  void dependencies() {
    // 注入依赖 懒加载
    Get.lazyPut<TabbarController>(() =>
        TabbarController()); //这个是主入口 肯定得提前注入 放到 GetMaterialApp的initialBinding里去 全局的状态绑定
    Get.lazyPut(() => CountController()); //这个也是多个页面用到  干脆一起放到最前面去

    /// put之后 就能find  或者  继承GetView取controller属性进行调用
    /// 跟页面绑定的话 直接继承GetView 关联路由绑定即可
    /// 如果是一个比较分散到处用到的一个状态 完全可以提前注入 四处用到的地方find即可 无需和页面进行绑定
  }
}
