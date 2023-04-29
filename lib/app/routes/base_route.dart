import 'package:get/get.dart';
import 'package:nested/app/modules/home/controllers/home_controller.dart';

class BaseRoute {
  static toNamed(String route, {arguments}) => Get.toNamed(route,
      arguments: arguments, id: HomeController.to.tabIndex.value + 1);
}
