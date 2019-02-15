import 'package:flutter/material.dart';
import 'package:flutter_test_app/navigation/appointments_navigator.dart';
import 'package:flutter_test_app/navigation/bottom_tab_item.dart';
import 'package:flutter_test_app/navigation/home_navigator.dart';
import 'package:flutter_test_app/navigation/messages_navigator.dart';
import 'package:flutter_test_app/navigation/profile_navigator.dart';

class MainNavigator extends StatefulWidget {
  MainNavigator({Key key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  static Map<BottomTabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    BottomTabItem.home: GlobalKey<NavigatorState>(),
    BottomTabItem.messages: GlobalKey<NavigatorState>(),
    BottomTabItem.profile: GlobalKey<NavigatorState>(),
    BottomTabItem.appointments: GlobalKey<NavigatorState>(),
  };

  Map<BottomTabItem, Widget> navigators = {
    BottomTabItem.home: HomeNavigator(navigatorKeys[BottomTabItem.home]),
    BottomTabItem.messages: MessagesNavigator(navigatorKeys[BottomTabItem.messages]),
    BottomTabItem.profile: ProfileNavigator(navigatorKeys[BottomTabItem.profile]),
    BottomTabItem.appointments: AppointmentsNavigator(navigatorKeys[BottomTabItem.appointments]),
  };

  BottomTabItem currentTab = BottomTabItem.home;
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      currentTab = _getBottomTabItemByIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: navigators[currentTab],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onTabTapped,
              type: BottomNavigationBarType.fixed,
              items: [
                new BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  title: Text('Messages'),
                ),
                new BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
                new BottomNavigationBarItem(icon: Icon(Icons.assignment), title: Text('Appointments'))
              ]),
        );

//    WillPopScope(
//        onWillPop: () async => !await navigatorKeys[currentTab].currentState.maybePop(),
//    child:Scaffold().....
//    )
  }

  BottomTabItem _getBottomTabItemByIndex(int index) {
    switch (index) {
      case 0:
        return BottomTabItem.home;
      case 1:
        return BottomTabItem.messages;
      case 2:
        return BottomTabItem.profile;
      case 3:
        return BottomTabItem.appointments;
    }

    return BottomTabItem.home;
  }
}
