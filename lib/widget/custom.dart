import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custom extends StatelessWidget {
  final String title;
  final String subTitle;
  const Custom({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(82, 255, 255, 255),
        border: Border.all(color: Colors.white38, width: 3.w),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19.sp,
              ),
            ),
            Divider(
              color: Colors.white,
              radius: BorderRadius.circular(2),
              thickness: 2,
            ),
            AutoSizeText(
              subTitle,
              style: TextStyle(
                fontSize: 17.sp,
                color: Colors.white70,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              maxFontSize: 20,
              minFontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
