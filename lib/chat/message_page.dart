import 'package:flutter/material.dart';

import 'message_data.dart';
import 'message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessageState createState() {
    return new _MessageState();
  }
}

class _MessageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (BuildContext context, int index) {
            return new MessageItem(messageData[index]);
          }),
    );
  }
}
