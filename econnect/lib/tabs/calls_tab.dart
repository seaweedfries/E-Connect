import 'package:flutter/material.dart';
import '../constants.dart';

class CallItem {
  const CallItem();
}

class CallTab extends StatelessWidget {
  const CallTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.kPrimaryColor,
        child: const Icon(Icons.add_call),
      ),
      body: ListTile(
        leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('images/person3.jpg'),
          ),
            title: Text(
              'Bob',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),        
            subtitle: Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Text(
              DateTime.now().toString(),
              style: TextStyle(fontSize: 13.0),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailCallScreen(),
                ),
              );
            },
          ),
    );
  }
}

class DetailCallScreen extends StatelessWidget {
  const DetailCallScreen({super.key});

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
        body: ListView(
      children: <Widget>[
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: const Image(
              image: AssetImage('./images/person3.jpg'),
            ).image,
          ),
          title: const Text(
            'Bob',
          ),
          trailing: Wrap(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  //Callingscreen();
                },
              ),
              IconButton(
                icon: Icon(Icons.videocam),
                onPressed: () {
                  //VideoCallingScreen();
                },
              ),
            ],
          )
        ),
        ListTile(
          leading: Icon(Icons.call_made, color: Colors.green,),
          title: const Text('Outgoing'),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Text('Not answered', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromARGB(255, 125, 125, 125)),), 
        ),
      ]
    )
    );
  }
}