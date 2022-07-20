import '../model/message.dart';

class Chat {
  final int chatID;
  final String chatName;
  final String chatPic;
  final String chatLastMessage;
  final String chatLastMessageTime;
  final String chatLastMessageSender;
  final String chatmember;
  final List<Message> messagesList;

  Chat({
    required this.chatID,
    required this.chatName,
    required this.chatPic,
    required this.chatLastMessage,
    required this.chatLastMessageTime,
    required this.chatLastMessageSender,
    required this.chatmember,
    required this.messagesList,
  });
}