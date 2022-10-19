import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webmedia/app/modules/home/controllers/home_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put<HomeController>(HomeController());  
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
