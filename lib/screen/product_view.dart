import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:live_test/models/model.dart';
import 'package:live_test/widget/custom.dart';

class ProductView extends StatelessWidget {
  final Model data;
  const ProductView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("View"),
        centerTitle: true,
        backgroundColor: Color(0xff450693),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xff450693),
      body: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Column(
          children: [
            Custom(title: "Titel", subTitle: data.title),
            Gap(20.h),
            Custom(title: "Description", subTitle: data.description),
            Gap(20.h),
            Custom(title: "Calories", subTitle: data.calories.toString()),
          ],
        ),
      ),
    );
  }
}
