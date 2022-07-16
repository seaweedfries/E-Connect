import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:econnect/constants.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: CustomColors.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            leading: Hero(
              tag: 'profile-pic',
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: const Image(
                  image: AssetImage('./images/user.jpg'),
                ).image,
              ),
            ),
        ]

      )
      );
  }
}