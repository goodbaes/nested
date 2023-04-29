import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nested/app/routes/base_route.dart';

import 'app/routes/app_pages.dart';

void main() {
  BaseRoute.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
