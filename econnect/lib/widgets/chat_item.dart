import 'package:flutter/material.dart';
import 'package:econnect/model/chat.dart';

class ChatItem extends StatelessWidget {

  final Chat chat;
  final Icon iconSubtitle;
  final VoidCallback? onTap;

  ChatItem(
    {
      required this.chat,
      required this.iconSubtitle,
      this.onTap,
    }
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      leading: GestureDetector(
        //onTap: () {
          //onTapProfile();
        //},
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: const Image(
          image: AssetImage('./images/user.jpg'),
        ).image,
      ),
    ),
    title: Text(
      chat.name,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Row(
      children: <Widget>[
        iconSubtitle == null ? Container() : Padding(
          padding: const EdgeInsets.only(right: 2.0), child: iconSubtitle
          ),
        Flexible(
          child: Text(
            chat.lastMessage.content,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
    // trailing: Column(
    //   mainAxisSize: MainAxisSize.max,
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   crossAxisAlignment: CrossAxisAlignment.end,
    //   children: <Widget>[
    //     Text(
    //       DateFormat('dd/MM/yy').format(chat.lastMessage.timestamp),
    //       style: TextStyle(
    //         fontSize: 12.0,
    //         color: chat.unreadMessages > 0 ? notificationBadgeColor : Colors.grey,
    //       ),
    //     ),
    //     chat.unreadMessages > 0 ? Container(
    //       decoration: BoxDecoration(
    //         borderRadius: const BorderRadius.all(
    //           Radius.circular(12.0)
    //           ),
    //           color: notificationBadgeColor,
    //         ),
    //         width: 24.0,
    //         height: 24.0,
    //         alignment: Alignment.center,
    //         margin: const EdgeInsets.only(right: 4.0, top: 4.0),
    //         child: Text('${chat.unreadMessages}',
    //         style: const TextStyle(color: Colors.white),
    //         ),
    //     )
    //     : const Text(''),
    //   ]
    // ),
    onTap: onTap,
    );
  }
}