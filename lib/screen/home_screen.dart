import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_test/controllers/controller.dart';
import 'package:live_test/screen/product_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put<Controller>(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: ListView.builder(
        padding: EdgeInsets.only(
          left: 8.w,
          right: 8.w,
          top: 20.h,
          bottom: 100.h,
        ),
        itemCount: controller.allData.value.length,
        itemBuilder: (_, index) {
          final data = controller.allData.value[index];
          return Card(
            color: Color(0xff450693),
            child: ListTile(
              title: Text(data.title),
              subtitle: Text(data.description),
              trailing: Text(
                data.calories.toString(),
                style: TextStyle(color: Colors.white54),
              ),
              titleTextStyle: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
              ),
              subtitleTextStyle: TextStyle(
                color: const Color.fromARGB(255, 223, 223, 223),
                fontSize: 12.sp,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductView(data: data),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
