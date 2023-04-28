import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nested/app/routes/destination_settings.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('to RemindersView'),
          onPressed: () =>
              Get.toNamed(DestinationSettings.reminders.route, id: 2),
        ),
      ),
    );
  }
}