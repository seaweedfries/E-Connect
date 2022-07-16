import 'package:econnect/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Chat'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.kPrimaryColor,
        child: const Icon(Icons.chat),
      ),
    );
  }
}