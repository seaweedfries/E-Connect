import 'package:econnect/constants.dart';
import 'package:econnect/widgets/input_item.dart';
import 'package:flutter/material.dart';
import '../model/chat.dart';
import '../widgets/chat_item.dart';
import '../data/chats.dart';

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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),        
            subtitle: Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Text(
              chats[index].lastmessage,
              style: TextStyle(fontSize: 13.0),
              ),
            ),
            trailing: Text(
              chats[index].lastmessagetime,
              style: TextStyle(fontSize: 10.0, color: Colors.grey),
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

class DetailChatScreen extends StatelessWidget {
  const DetailChatScreen({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, size: 20),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        title: Text(chat.name),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        ),
        body: Stack(
          children: <Widget> [
            Container(
              decoration: BoxDecoration(
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
      bottomNavigationBar: InputItem(),
    );
  }
}