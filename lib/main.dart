import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nested/app/modules/home/bindings/home_binding.dart';
import 'package:nested/app/modules/home/views/home_view.dart';

void main() {
  HomeBinding().dependencies();
  runApp(
    const GetMaterialApp(
      title: "Application",
      home: HomeView(),
    ),
  );
}
