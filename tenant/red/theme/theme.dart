import 'package:flutter/material.dart';

class TenantColors {
  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(_redPrimaryValue),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );
  static const int _redPrimaryValue = 0xFFF44336;
}

final ThemeData tenantThemeData = ThemeData(
    primarySwatch: TenantColors.red,
    primaryColor: TenantColors.red
);
