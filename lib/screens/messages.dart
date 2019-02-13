import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessageScreenState();
}

class MessageScreenState extends State<MessageScreen> {
  @override
  void initState() {
    print("initState called on MessageScreen");
    super.initState();
  }

  @override
  void didUpdateWidget(MessageScreen oldWidget) {
    print("didUpdateWidget called on MessageScreen");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose called on MessageScreen");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called on MessageScreen");
    return Scaffold(
        appBar: AppBar(
        title: Text("Messages"),
    ),
    body: Container(
      child: Center(
        child: MaterialButton(
          color: Colors.white,
          onPressed: () {
            setState(() {
              print("state refresh on MessageScreen");
            });
          },
          child: Text("Refresh State"),
        ),
      ),
    ));
  }
}
