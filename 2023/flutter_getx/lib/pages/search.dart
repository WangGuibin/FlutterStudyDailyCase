import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/CountController.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPage();
}

class _SearchPage extends State<StatefulWidget> {
  CountController counter = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    // var receivedData = Get.arguments;
    print(Get.arguments);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('搜索'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                counter.decrement();
              },
            )
          ],
        ),
        body: Container(
          color: Colors.redAccent,
          child: Center(
            child: Obx(() => Text("${counter.count}")),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 60, right: 30),
          child: FloatingActionButton(
            heroTag: UniqueKey(),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            onPressed: () {
              counter.increment();
            },
            child: const Icon(
              Icons.add_circle,
              size: 55.0,
            ),
          ),
        ));
  }
}
