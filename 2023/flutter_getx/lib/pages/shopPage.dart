import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/ShopController.dart';
import '../controller/CountController.dart';

class ShopPage extends GetView<ShopController> {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //这里获取全局的状态进行回显
    CountController counter = Get.find<CountController>();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Shop"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Obx(() => Text("${controller.money}")),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Get.toNamed('/search');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: () {
                  controller.costMoney();
                },
              ),
            ),
            SizedBox(
              height: 100,
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  counter.increment();
                },
              ),
            ),
            Obx(() => Text("${counter.count}")),
            SizedBox(
              height: 100,
              child: IconButton(
                icon: const Icon(Icons.subdirectory_arrow_right),
                onPressed: () {
                  counter.decrement();
                },
              ),
            )
          ],
        ));
  }
}
