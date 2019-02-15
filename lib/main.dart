import 'package:flutter/material.dart';
import 'package:flutter_test_app/navigation/main_navigator.dart';
import 'package:flutter_test_app/theme/theme.dart';

void main() => runApp(TestApp());

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Tenant',
      theme: tenantThemeData,
      home: MainNavigator(),
    );
  }
}


