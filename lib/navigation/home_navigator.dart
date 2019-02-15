import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/appointments/appointment/appointment.dart';
import 'package:flutter_test_app/screens/appointments/appointments.dart';
import 'package:flutter_test_app/screens/home/home.dart';

class HomeNavigator extends StatefulWidget {

  final GlobalKey<NavigatorState> navigatorKey;

  HomeNavigator(this.navigatorKey);

  @override
  State<StatefulWidget> createState() => HomeNavigatorState();
}

class HomeNavigatorState extends State<HomeNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: 'home/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        print("onGenerateRoute called on HomeNavigator " + settings.name);
        switch (settings.name) {
          case 'home/home':
            builder = (BuildContext _) => HomeScreen();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
