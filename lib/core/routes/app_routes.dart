import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_routes.dart';
import 'package:store_app/features/auth/presentation/screen/login.dart';

import '../common/screens/under_build_screen.dart';

class PagesName {
  static const String loginScreen = "login";
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesName.loginScreen:
        return BaseRoute(page: const LoginScreen());
      default:
        return BaseRoute(page: const UnderBuildScreen());
    }
  }
}
