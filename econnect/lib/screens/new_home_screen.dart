import 'package:flutter/material.dart';
import '../constants.dart';
import '../globals.dart';
import '../tabs/chats_tab.dart';
import '../tabs/calls_tab.dart';
import '../data/chats.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.kPrimaryColor,
          title: const Text('Whatsapp: Silver Mode', style: TextStyle(fontSize: 20.0)),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                clicknumber += 1;
              },),
            PopupMenuButton(
              onSelected: (value) {
                clicknumber += 1;
                  if (value == 'settings') {
                    Navigator.pushNamed(context, '/newsettings');
                  }},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1, 
                  child: Text('New group', style: TextStyle(fontSize: 14.0+fontvaluefactor),)),
                PopupMenuItem(
                  value: 2, 
                  child: Text('New broadcast', style: TextStyle(fontSize: 14.0+fontvaluefactor))),
                PopupMenuItem(
                  value: 3, 
                  child: Text('Linked devices', style: TextStyle(fontSize: 14.0+fontvaluefactor))),
                PopupMenuItem(
                  value: 4, 
                  child: Text('Starred messages', style: TextStyle(fontSize: 14.0+fontvaluefactor))),
                PopupMenuItem(
                  value: 'settings', 
                  child: Text('Settings', style: TextStyle(fontSize: 14.0+fontvaluefactor))),
              ]),
            const SizedBox(width: 10),
          ],
          bottom: TabBar(
            indicatorColor: CustomColors.kLightColor,
            tabs:[
              Tab(
                child: Text('Chats',
                style: TextStyle(fontSize: 18+fontvaluefactor)),),
              Tab(child: Text('Calls',
                  style: TextStyle(fontSize: 18+fontvaluefactor)),),
          ])
        ),
        body: TabBarView(children: [
          Center(
            child: ChatTab(
              chats: botchats,
              )
          ),
          Center(
            child: CallTab(),
          ),
        ]),
        ),      
      );
  }
}