import 'package:econnect/constants.dart';
import 'package:flutter/material.dart';

class ChatItem {
  final String title;
  final String description;

  const ChatItem(this.title, this.description);
}

class ChatTab extends StatelessWidget {
  const ChatTab({Key? key, required this.todos}) : super(key: key);

  final List<ChatItem> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.kPrimaryColor,
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('images/user.jpg'),
          ),
            title: Text(
              todos[index].title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),        
            subtitle: Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Text(
              'subtitle',
              style: TextStyle(fontSize: 13.0),
              ),
            ),
            trailing: Text(
              'trailing',
              style: TextStyle(fontSize: 10.0, color: Colors.grey),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailChatScreen(todo: todos[index]),
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
  const DetailChatScreen({super.key, required this.todo});

  final ChatItem todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
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
        title: Text(todo.title),
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
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(todo.description),
            ),
          ]
      ),
    );
  }
}