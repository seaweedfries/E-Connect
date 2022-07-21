import 'package:flutter/material.dart';
import 'package:econnect/constants.dart';
import 'package:econnect/widgets/setting_item.dart';


class NewSettingsScreen extends StatefulWidget {
  const NewSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NewSettingsScreen> createState() => _NewSettingsScreenState();
}

class _NewSettingsScreenState extends State<NewSettingsScreen> {
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
            title: const Text(
              'carbohydrate',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            subtitle: const Text(
              'hehe hci',
              style: TextStyle(fontSize: 13.0),
            ),
          ),
          const Divider(height: 0.0,),
          SettingItem(
            icon: Icons.vpn_key,
            title: 'Account',
            subtitle: 'Privacy, security, change number',
            onTapp: '',
          ),
          SettingItem(
            icon: Icons.chat,
            title: 'Chats',
            subtitle: 'Theme, wallpapers, chat history',
            onTapp: '',
          ),
          SettingItem(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Message, group & call tones',
            onTapp: '',
          ),
          SettingItem(
            icon: Icons.data_usage_rounded,
            title: 'Storage and data',
            subtitle: 'Network usage, auto-download',
            onTapp: '',
          ),
          SettingItem(
            icon: Icons.help_outline_outlined,
            title: 'Help',
            subtitle: 'Help centre, contact us, privacy policy',
            onTapp: '',
          ),
          SettingItem(
            icon: Icons.group,
            title: 'Invite a friend',
            onTapp: '',
          ),
          SettingItem(
            icon: Icons.image_not_supported,
            title: 'Silver mode',
            onTapp: '/newsilverscreen',
          ),
        ],
      ),
    );
  }
}