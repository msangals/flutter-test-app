import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/profile/profile.dart';

class ProfileNavigator extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  ProfileNavigator(this.navigatorKey);

  @override
  State<StatefulWidget> createState() => ProfileNavigatorState();
}

class ProfileNavigatorState extends State<ProfileNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: 'profile/profile',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        print("onGenerateRoute called on ProfileNavigator " + settings.name);
        switch (settings.name) {
          case 'profile/profile':
            builder = (BuildContext _) => ProfileScreen();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
