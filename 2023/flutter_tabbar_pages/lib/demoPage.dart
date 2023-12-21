import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key, required this.title, required this.bgColor});

  final String title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                print(title);
              },
            )
          ],
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: Text(title),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 60, right: 30),
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(60))),
            onPressed: () {},
            child: const Icon(
              Icons.add_circle,
              size: 55.0,
            ),
          ),
        ));
  }
}
