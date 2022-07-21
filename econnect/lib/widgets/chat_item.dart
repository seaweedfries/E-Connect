import 'package:econnect/data/message_data.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/chat.dart';
import '../model/message.dart';

class ChatItem extends StatefulWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  State<ChatItem> createState() => _ChatState();
}

class _ChatState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                child: ListView(
                  controller: ScrollController(),
                  children: [
                  for (var message in messages)
                    ChatMessageWidget(message),
                  ], 
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatMessageWidget extends StatelessWidget {
  final Message message;
  ChatMessageWidget(this.message);

  @override
  Widget build(BuildContext context) {
    bool isMe = message.senderNumber == 'user';

    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(message.text),
            constraints:
                BoxConstraints.loose(MediaQuery.of(context).size * 0.8),
            decoration: BoxDecoration(
                color: isMe
                    ? CustomColors.kChatBackgroundColor
                    : CustomColors.kLightColor),
          ),
        ],
      ),
    );
  }
}