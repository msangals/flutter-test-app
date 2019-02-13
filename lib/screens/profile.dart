import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    print("initState called on ProfileScreen");
    super.initState();
  }

  @override
  void didUpdateWidget(ProfileScreen oldWidget) {
    print("didUpdateWidget called on ProfileScreen");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose called on ProfileScreen");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called on ProfileScreen");
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Container(
          child: Center(
            child: MaterialButton(
              color: Colors.white,
              onPressed: () {
                setState(() {
                  print("state refresh on ProfileScreen");
                });
              },
              child: Text("Refresh State"),
            ),
          ),
        ));
  }
}
