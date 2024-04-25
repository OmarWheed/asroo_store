import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_routes.dart';
import 'package:store_app/test_page_one.dart';
import 'package:store_app/test_page_two.dart';

import '../common/screens/under_build_screen.dart';

class PagesName {
  static const String testPageOne = "TextPageOne";
  static const String testPageTwo = "TextPageTwo";
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesName.testPageOne:
        return BaseRoute(page: const TestPageOne());
      case PagesName.testPageTwo:
        return BaseRoute(page: const TestPageTwo());

      default:
        return BaseRoute(page: const UnderBuildScreen());
    }
  }
}
