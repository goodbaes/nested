import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nested/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Obx(
          () => Column(
            children: [
              Row(
                children: [
                  ElevatedButton(child: const Icon(Icons.home), onPressed: () => controller.tabIndex.value = 0),
                  ElevatedButton(child: const Icon(Icons.home), onPressed: () => controller.tabIndex.value = 1),
                ],
              ),
              Expanded(
                child: IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    Navigator(
                        key: Get.nestedKey(1),
                        initialRoute: Routes.SHOP,
                        onGenerateRoute: (settings) => AppPages.getPage(settings)),
                    Navigator(
                      key: Get.nestedKey(2),
                      initialRoute: Routes.SETTINGS,
                      onGenerateRoute: (settings) => AppPages.getPage(settings),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
