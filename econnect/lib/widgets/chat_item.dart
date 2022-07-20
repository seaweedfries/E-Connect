import 'package:flutter/material.dart';
import '../model/chat.dart';

class ChatItem extends StatefulWidget {
  const ChatItem({Key? key, required this.chatTitle, required this.lastmessage, required this.date}) : super(key: key);

  final String chatTitle;
  final String lastmessage;
  final String date;


  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    
  }
}