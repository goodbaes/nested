import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested/app/modules/detail/bindings/detail_binding.dart';
import 'package:nested/app/modules/detail/views/detail_view.dart';
import 'package:nested/app/modules/reminders/bindings/reminders_binding.dart';
import 'package:nested/app/modules/reminders/views/reminders_view.dart';
import 'package:nested/app/modules/settings/bindings/settings_binding.dart';
import 'package:nested/app/modules/settings/views/settings_view.dart';
import 'package:nested/app/modules/shop/bindings/shop_binding.dart';
import 'package:nested/app/modules/shop/views/shop_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  
  static GetPageRoute getPage(RouteSettings settings) {
    GetPage? getxPage = routes.firstWhereOrNull((e) {
      return e.name == settings.name;
    });

    return GetPageRoute(page: () => getxPage?.page() ?? Container());
  }

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => const HomeView(), binding: HomeBinding(), children: const []),
    GetPage(name: _Paths.SETTINGS, page: () => const SettingsView(), binding: SettingsBinding(), children: const []),
    GetPage(name: _Paths.REMINDERS, page: () => const RemindersView(), binding: RemindersBinding(), children: const []),
    GetPage(name: _Paths.SHOP, page: () => const ShopView(), binding: ShopBinding(), children: const []),
    GetPage(name: _Paths.DETAIL, page: () => const DetailView(), binding: DetailBinding(), children: const []),
  ];
}
