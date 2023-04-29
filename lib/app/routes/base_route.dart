import 'package:get/get.dart';
import 'package:nested/app/modules/home/controllers/home_controller.dart';

class BaseRoute extends GetxController {
  static BaseRoute get to => Get.find();

  static BaseRoute init() => Get.put(BaseRoute());

  int get _currentRoute => HomeController.to.tabIndex.value + 1;

  toNamed(String route, {arguments}) {
    _arguments[_currentRoute] = arguments;
    Get.toNamed(route, id: _currentRoute);
  }

  dynamic get arguments => _arguments[_currentRoute];

  final Map<int, dynamic> _arguments = {};
}
