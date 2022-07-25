import 'package:flutter/material.dart';
import '../constants.dart';

class CallItem {
  final String title;
  final String description;

  const CallItem(this.title, this.description);
}

class CallTab extends StatelessWidget {
  const CallTab({Key? key, required this.todos}) : super(key: key);

  final List<CallItem> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.kPrimaryColor,
        child: const Icon(Icons.add_call),
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
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
                  builder: (context) => DetailCallScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailCallScreen extends StatelessWidget {
  const DetailCallScreen({super.key, required this.todo});

  final CallItem todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text('Call info'),
        actions: [
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../../assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(todo.description),
        ),
      ]),
    );
  }
}
