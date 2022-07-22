import '../model/message.dart';

class Chat {
  final String pic;
  final String name;
  final List<Message> messageList;

  Chat({required this.pic, required this.name, required this.messageList});
}