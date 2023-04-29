import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/base_route.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailView'),
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
