import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    print("initState called on HomeScreen");
    super.initState();
  }

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    print("didUpdateWidget called on HomeScreen");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose called on HomeScreen");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called on HomeScreen");
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage("assets/logo.png")),
                MaterialButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      print("state refresh on HomeScreen");
                    });
                  },
                  child: Text("Refresh State"),
                )
              ],
            ),
          ),
        ));
  }
}
