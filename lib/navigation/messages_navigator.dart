import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/appointments/appointment/appointment.dart';
import 'package:flutter_test_app/screens/appointments/appointments.dart';
import 'package:flutter_test_app/screens/messages/messages.dart';

class MessagesNavigator extends StatefulWidget {

  final GlobalKey<NavigatorState> navigatorKey;

  MessagesNavigator(this.navigatorKey);

  @override
  State<StatefulWidget> createState() => MessagesNavigatorState();
}

class MessagesNavigatorState extends State<MessagesNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: 'messages/messages',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        print("onGenerateRoute called on MessagesNavigator " + settings.name);
        switch (settings.name) {
          case 'messages/messages':
            builder = (BuildContext _) => MessagesScreen();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
