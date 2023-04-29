import 'package:get/get.dart';
import 'package:nested/app/modules/home/controllers/home_controller.dart';

class BaseRoute extends GetxController {
  static BaseRoute get to => Get.find();

  static BaseRoute init() => Get.put(BaseRoute());

  int? get _currentRoute => Get.isRegistered<HomeController>() ? HomeController.to.tabIndex.value + 1 : null;

  toNamed(String route, {arguments, bool isNested = false}) {
    if (isNested) {
      _arguments[_currentRoute!] = arguments;
      Get.toNamed(route, id: _currentRoute);
    } else {
      Get.toNamed(route, arguments: arguments);
    }
  }

  dynamic get arguments => _currentRoute == null ? _arguments[_currentRoute] : Get.arguments;

  final Map<int, dynamic> _arguments = {};
}
