import 'package:econnect/model/message.dart';
import 'package:flutter/material.dart';
import '../data/message_data.dart';

void addNewMessage() {
  if (textEditingController.text.trim().isNotEmpty) {
    Message newMessage = Message(
      text: textEditingController.text.trim(),
      time: DateTime.now().toString(),
      senderNumber: 'user',
    );

    void setState;(() {
      messages.add(newMessage);
      textEditingController.text = '';
    });
}
}

class InputItem extends StatefulWidget {
  const InputItem({Key? key}) : super(key: key);

  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                hintText: 'Message',
              ),
              textInputAction: TextInputAction.send,
              style: TextStyle (
                fontSize: 16.0,
                color: Colors.black,
              ),
              onSubmitted: (_) {
                addNewMessage();
              },
            ),
          ),
        ]
      )
    );
  }
}