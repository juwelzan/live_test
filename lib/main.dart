import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:live_test/screen/home_screen.dart';

void main() {
  runApp(
    ScreenUtilInit(
      ensureScreenSize: true,
      minTextAdapt: true,
      designSize: Size(360, 690),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {"home": (_) => HomeScreen()},
    );
  }
}
