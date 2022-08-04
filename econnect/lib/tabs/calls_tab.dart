import 'package:flutter/material.dart';
import '../constants.dart';
import '../globals.dart';

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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0+fontvaluefactor),
        ),
        subtitle: Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Text(
            DateTime.now().toString(),
            style: TextStyle(fontSize: 13.0+fontvaluefactor),
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
        title: Text('Call info', style: TextStyle(fontSize: 20.0+fontvaluefactor),),
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
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        child: ListView(
      children: <Widget>[
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: const Image(
              image: AssetImage('./images/person3.jpg'),
            ).image,
          ),
          title: Text(
            'Bob',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0+fontvaluefactor),
          ),
          trailing: Wrap(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  //Callingscreen();
                },
              ),
            ],
          )
        ),
        ListTile(
          leading: Icon(Icons.call_made, color: Colors.green,),
          title: Text('Outgoing', style: TextStyle(fontSize: 14.0+fontvaluefactor),),
          subtitle: Text(DateTime.now().toString()),
          trailing: Text('Not answered', style: TextStyle(fontSize: 14.0+fontvaluefactor,fontWeight: FontWeight.w500, color: Color.fromARGB(255, 125, 125, 125)),), 
        ),
      ]
    )
    )]));
  }
}