import 'package:flutter/material.dart';

class SendMessageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendMessageWidgetState();
}

class SendMessageWidgetState extends State<SendMessageWidget> {
  @override
  void initState() {
    print("initState called on SendMessageWidget");
    super.initState();
  }

  @override
  void didUpdateWidget(SendMessageWidget oldWidget) {
    print("didUpdateWidget called on SendMessageWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("dispose called on SendMessageWidget");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called on SendMessageWidget");
    return Container(
      child: Center(
        child: MaterialButton(
          color: Colors.white,
          onPressed: () {
            setState(() {
              print("state refresh on SendMessageWidget");
            });
          },
          child: Text("SendMessage"),
        ),
      ),
    );
  }
}
