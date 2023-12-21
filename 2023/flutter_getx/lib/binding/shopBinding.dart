import 'package:get/get.dart';
import '../controller/ShopController.dart';

class ShopControllerBinding extends Bindings {
  @override
  void dependencies() {
    // 注入依赖 懒加载
    Get.lazyPut(() => ShopController()); //页面为生命周期的 单个页面的状态绑定
  }
}
