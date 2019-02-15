import 'dart:math';

import 'package:flutter/material.dart';

class AppointmentsScreen extends StatefulWidget {
  final Function(String param) navigateToAppointment;

  AppointmentsScreen(this.navigateToAppointment);

  @override
  State<StatefulWidget> createState() => AppointmentsScreenState();
}

class AppointmentsScreenState extends State<AppointmentsScreen> {
  @override
  void initState() {
    print("initState called on AppointmentsScreen");
    super.initState();
  }

  @override
  void didUpdateWidget(AppointmentsScreen oldWidget) {
    print("didUpdateWidget called on AppointmentsScreen");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose called on AppointmentsScreen");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called on AppointmentsScreen");
    var appointName = "Appointment " + Random().nextInt(10000).toString();
    return Scaffold(
        appBar: AppBar(
          title: Text("Appointments"),
        ),
        body: Center(
          child: MaterialButton(
            color: Colors.white,
            onPressed: () {
              widget.navigateToAppointment(appointName);
            },
            child: Text("Navigate to " + appointName),
          ),
        ));
  }
}
