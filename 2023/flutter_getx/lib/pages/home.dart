import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/CountController.dart';
import './search.dart';

class HomePage extends GetView<CountController> {
  const HomePage({super.key});

  // CountController counter = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('首页'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                controller.decrement();
                Map<String, dynamic> data = {'name': 'John', 'age': 30};
                // Get.to(const SearchPage(), arguments: data);
                Get.toNamed('/search', arguments: data);
                controller.update();
              },
            )
          ],
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Obx(() => Text("${controller.count}")),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 60, right: 30),
          child: FloatingActionButton(
            heroTag: UniqueKey(),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            onPressed: () {
              controller.increment();
            },
            child: const Icon(
              Icons.add_circle,
              size: 55.0,
            ),
          ),
        ));
  }
}
