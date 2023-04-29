import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../routes/base_route.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('SettingsView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('to RemindersView'),
          onPressed: () => BaseRoute.to.toNamed(Routes.REMINDERS, arguments: 'from sett'),
        ),
      ),
    );
  }
}
