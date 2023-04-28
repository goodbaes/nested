import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nested/app/modules/reminders/bindings/reminders_binding.dart';
import 'package:nested/app/modules/reminders/views/reminders_view.dart';
import 'package:nested/app/modules/settings/bindings/settings_binding.dart';
import 'package:nested/app/modules/settings/views/settings_view.dart';

enum DestinationSettings {
  // Update these values in the enum with new values that represent the
  // screens that you want to navigate in your app.
  settings,
  reminders;

  String get route {
    return '/${describeEnum(this)}';
  }

  Widget get widget {
    // Update the cases in this switch for each element of this enum
    // and the screens that you want to navigate when an enum is selected.
    switch (this) {
      case DestinationSettings.settings:
        SettingsBinding().dependencies();
        return const SettingsView();
      case DestinationSettings.reminders:
        RemindersBinding().dependencies();
        return const RemindersView();
    }
  }

  static GetPageRoute getPage(RouteSettings settings) {
    var destination = DestinationSettings.values
        .firstWhereOrNull((e) => e.route == settings.name);
    return GetPageRoute(page: () => destination?.widget ?? Container());
  }
}
