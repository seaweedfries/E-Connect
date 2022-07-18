import 'package:flutter/material.dart';
import 'package:econnect/constants.dart';
import 'package:econnect/widgets/setting_item.dart';


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
          ),
          SettingItem(
            icon: Icons.chat,
            title: 'Chats',
            subtitle: 'Theme, wallpapers, chat history',
          ),
          SettingItem(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Message, group & call tones',
          ),
          SettingItem(
            icon: Icons.data_usage_rounded,
            title: 'Storage and data',
            subtitle: 'Network usage, auto-download',
          ),
          SettingItem(
            icon: Icons.help_outline_outlined,
            title: 'Help',
            subtitle: 'Help centre, contact us, privacy policy',
          ),
          SettingItem(
            icon: Icons.group,
            title: 'Invite a friend',
          ),
          SettingItem(
            icon: Icons.image_not_supported,
            title: 'Silver mode',
            onTapp: '/silverscreen',
          ),
        ],
      ),
    );
  }
}