import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ukkspesial/app/modules/home/controllers/home_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  Get.put(HomeController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
