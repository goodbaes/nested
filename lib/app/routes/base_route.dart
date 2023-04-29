import 'package:get/get.dart';
import 'package:nested/app/modules/home/controllers/home_controller.dart';

class BaseRoute extends GetxController {
  static BaseRoute get to => Get.find();

  static BaseRoute init() => Get.put(BaseRoute());

  int? get _currentKey => Get.isRegistered<HomeController>() ? HomeController.to.tabIndex.value + 1 : null;

  toNamed(String route, {arguments, bool isNested = false}) {
    if (isNested) {
      _arguments[_currentKey!] = arguments;
      Get.toNamed(route, id: _currentKey);
    } else {
      Get.toNamed(route, arguments: arguments);
    }
  }

  dynamic get arguments => _currentKey != null ? _arguments[_currentKey] : Get.arguments;

  final Map<int, dynamic> _arguments = {};
}
