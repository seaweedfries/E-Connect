import 'package:flutter/src/gestures/tap.dart';

class Message {
  final String text;
  final String time;
  final String senderNumber;
  Message(
      {required this.text,
      required this.time,
      required this.senderNumber,
      required TapGestureRecognizer recognizer});
}
