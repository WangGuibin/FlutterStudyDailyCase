import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/CountController.dart';

// class MyCenterPage extends StatefulWidget {
//   MyCenterPage({super.key, required this.title, required this.bgColor});

//   final String title;
//   final Color bgColor;

//   @override
//   State<StatefulWidget> createState() =>
//       _MyCenterPage(title: title, bgColor: bgColor);
// }

// class _MyCenterPage extends State<StatefulWidget> {
//   final String title;
//   final Color bgColor;
//   _MyCenterPage({required this.title, required this.bgColor});

//   CountController counter = Get.find<CountController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(title),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.add),
//               onPressed: () {
//                 counter.decrement();
//               },
//             )
//           ],
//         ),
//         body: Container(
//           color: bgColor,
//           child: Center(
//             child: Obx(() => Text("${counter.count}")),
//           ),
//         ),
//         floatingActionButton: Padding(
//           padding: const EdgeInsets.only(bottom: 60, right: 30),
//           child: FloatingActionButton(
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(60))),
//             onPressed: () {
//               counter.increment();
//             },
//             child: const Icon(
//               Icons.add_circle,
//               size: 55.0,
//             ),
//           ),
//         ));
//   }
// }

class MyCenterPage extends GetView<CountController> {
  const MyCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('我的'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                controller.decrement();
              },
            )
          ],
        ),
        body: Container(
          color: Colors.lightBlueAccent,
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
              Get.toNamed('/shop');
              controller.update();
            },
            child: const Icon(
              Icons.add_circle,
              size: 55.0,
            ),
          ),
        ));
  }
}
