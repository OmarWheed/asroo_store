import 'package:flutter/material.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/colors/colors_light.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorDark.mainColor,
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
  );
}
