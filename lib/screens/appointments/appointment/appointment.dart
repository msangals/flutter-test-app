import 'dart:math';

import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  final String appointmentName;

  final Function(String param) navigateToAppointment;

  const AppointmentScreen(this.appointmentName, this.navigateToAppointment);

  @override
  State<StatefulWidget> createState() => AppointmentScreenState();
}

class AppointmentScreenState extends State<AppointmentScreen> {
  @override
  void initState() {
    print("initState called on AppointmentScreen");
    super.initState();
  }

  @override
  void didUpdateWidget(AppointmentScreen oldWidget) {
    print("didUpdateWidget called on AppointmentScreen");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose called on AppointmentScreen");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called on AppointmentScreen");
    var appointName = "Appointment " + Random().nextInt(10000).toString();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.appointmentName),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    print("state refresh on AppointmentScreen");
                  });
                },
                child: Text("Refresh State"),
              ),
              MaterialButton(
                color: Colors.white,
                onPressed: () {
                  widget.navigateToAppointment(appointName);
                },
                child: Text("Navigate to " + appointName),
              )
            ]));
  }
}
