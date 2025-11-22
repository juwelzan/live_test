import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_test/controllers/controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put<Controller>(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: controller.allData.value.length,
        itemBuilder: (_, index) {
          final data = controller.allData.value[index];
          return ListTile(
            title: Text(data.title),
            subtitle: Text(data.description),
            trailing: Text(data.calories.toString()),
          );
        },
      ),
    );
  }
}
