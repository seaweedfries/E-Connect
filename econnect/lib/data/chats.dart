import 'package:flutter/cupertino.dart';
import '../model/chat.dart';
import '../data/message_data.dart';

final List<Chat> chats = [
  Chat(
    pic: 'images/person1.jpg',
    name: 'Sally',
    lastmessage: messages.last.text,
    lastmessagetime: messages.last.time,
  ),
  Chat(
    pic: 'images/person2.jpg',
    name: 'Ahmad',
    lastmessage: messages.last.text,
    lastmessagetime: messages.last.time,
  ),
  Chat(
    pic: 'images/person3.jpg',
    name: 'Bob',
    lastmessage: messages.last.text,
    lastmessagetime: messages.last.time,
  )
];