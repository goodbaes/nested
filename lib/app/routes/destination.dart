import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nested/app/modules/detail/bindings/detail_binding.dart';
import 'package:nested/app/modules/detail/views/detail_view.dart';
import 'package:nested/app/modules/shop/bindings/shop_binding.dart';
import 'package:nested/app/modules/shop/views/shop_view.dart';

enum Destination {
  // Update these values in the enum with new values that represent the
  // screens that you want to navigate in your app.
  shop,
  detail;

  String get route {
    return '/${describeEnum(this)}';
  }

  Widget get widget {
    // Update the cases in this switch for each element of this enum
    // and the screens that you want to navigate when an enum is selected.
    switch (this) {
      case Destination.shop:
        ShopBinding().dependencies();
        return const ShopView();
      case Destination.detail:
        DetailBinding().dependencies();
        return const DetailView();
    }
  }

  static GetPageRoute getPage(RouteSettings settings) {
    var destination =
        Destination.values.firstWhereOrNull((e) => e.route == settings.name);
    return GetPageRoute(page: () => destination?.widget ?? Container());
  }
}
