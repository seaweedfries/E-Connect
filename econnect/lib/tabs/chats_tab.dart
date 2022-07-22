import 'package:econnect/constants.dart';
import 'package:flutter/material.dart';
import '../model/chat.dart';
import '../widgets/chat_item.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key, required this.chats}) : super(key: key);

  final List chats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.kPrimaryColor,
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(chats[index].pic),
            ),
            title: Text(
              chats[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),        
            subtitle: Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              chats[index].lastmessage,
              style: const TextStyle(fontSize: 13.0),
              ),
            ),
            trailing: Text(
              chats[index].lastmessagetime,
              style: const TextStyle(fontSize: 10.0, color: Colors.grey),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailChatScreen(chat: chats[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailChatScreen extends StatefulWidget {
  const DetailChatScreen({Key? key, required this.chat}) : super(key: key);
  final Chat chat;

  @override
  State<DetailChatScreen> createState() => _DetailChatScreenState();
}

class _DetailChatScreenState extends State<DetailChatScreen> {
  void refreshParent() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, size: 20),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        title: Text(widget.chat.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        ),
        body: Stack(
          children: <Widget> [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: ChatItem(),
            ),
          ]
      ),
      bottomNavigationBar: InputItem(function: refreshParent),
    );
  }
}