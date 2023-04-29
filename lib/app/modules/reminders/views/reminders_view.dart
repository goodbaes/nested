import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nested/app/routes/base_route.dart';

import '../controllers/reminders_controller.dart';

class RemindersView extends GetView<RemindersController> {
  const RemindersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RemindersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          BaseRoute.to.arguments,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
