import 'package:flutter/material.dart';
import 'package:flutter_test_app/screens/messages/send_message_widget.dart';

class MessagesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MessagesScreenState();
}

class MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    print("initState called on MessageScreen");
    super.initState();
  }

  @override
  void didUpdateWidget(MessagesScreen oldWidget) {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            color: Colors.white,
            onPressed: () {
              setState(() {
                print("state refresh on MessageScreen");
              });
            },
            child: Text("Refresh State"),
          ),
          SendMessageWidget()
        ],
      ),
    );
  }
}
