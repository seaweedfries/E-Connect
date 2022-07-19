import 'package:flutter/material.dart';

import '../constants.dart';

class StatusTab extends StatefulWidget {
  const StatusTab({Key? key}) : super(key: key);

  @override
  State<StatusTab> createState() => _StatusTabState();
}

class _StatusTabState extends State<StatusTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.kPrimaryColor,
        child: const Icon(Icons.camera_alt),
      ),
    body: ListView(
      children: <Widget>[
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: const Image(
              image: AssetImage('./images/user.jpg'),
            ).image,
            child: Stack(
              children: const <Widget>[
              Positioned(
                bottom: -3, right: 0,
                child: Icon(Icons.add_circle, color: CustomColors.kPrimaryColor, size: 30.0,),
              )]
            )
          ),
          title: const Text(
            'My status',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          subtitle: const Text(
            'Tap to add status update',
            style: TextStyle(fontSize: 13.0),
          ),
          onTap: () {},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Recent updates', 
            style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromARGB(255, 125, 125, 125)),
            ),
        ),

        const ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          leading: Icon(Icons.brightness_1_outlined, size: 60.0, color: CustomColors.kPrimaryColor,),
          title: Text(
            'Whatsapp',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: CustomColors.kPrimaryColor),
          ),
        )
      ]
    )
    );
  }
}