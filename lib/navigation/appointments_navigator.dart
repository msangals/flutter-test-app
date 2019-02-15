import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/appointments/appointment/appointment.dart';
import 'package:flutter_test_app/screens/appointments/appointments.dart';

typedef ParameterizedWidgetBuilder<T> = Widget Function(BuildContext context, T param);

class AppointmentsNavigatorRoutes {
  static const String appointments = 'appointments';
  static const String appointment = 'appointment';
}

class AppointmentsNavigator extends StatelessWidget {

  final GlobalKey<NavigatorState> navigatorKey;

  AppointmentsNavigator(this.navigatorKey);

  Map<String, ParameterizedWidgetBuilder<String>> _routes(BuildContext context) {
    return {
      AppointmentsNavigatorRoutes.appointments: (BuildContext context, String param) => AppointmentsScreen((String appointmentName) {
        Navigator.pushNamed(context, AppointmentsNavigatorRoutes.appointment, arguments: appointmentName);
      }),
      AppointmentsNavigatorRoutes.appointment: (BuildContext context, String param) => AppointmentScreen(param, (String appointmentName) {
        Navigator.pushNamed(context, AppointmentsNavigatorRoutes.appointment, arguments: appointmentName);
      })
    };
  }

  @override
  Widget build(BuildContext context) {
    var routes = _routes(context);

    return Navigator(
        key: navigatorKey,
        initialRoute: AppointmentsNavigatorRoutes.appointments,
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routes[routeSettings.name](context, routeSettings.arguments),
          );
        });
  }
}
