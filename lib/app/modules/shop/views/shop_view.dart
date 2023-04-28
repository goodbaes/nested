import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nested/app/routes/destination.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ShopView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('to RemindersView'),
          onPressed: () => Get.toNamed(Destination.detail.route, id: 1),
        ),
      ),
    );
  }
}
