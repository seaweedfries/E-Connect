import 'package:flutter/material.dart';
import '../constants.dart';
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
          title: const Text('Whatsapp: Silver Mode'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                setState(() {                });},),
            PopupMenuButton(
              onSelected: (value) {
                  if (value == 'settings') {
                    Navigator.pushNamed(context, '/newsettings');
                  }},
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1, 
                  child: Text('New group')),
                const PopupMenuItem(
                  value: 2, 
                  child: Text('New broadcast')),
                const PopupMenuItem(
                  value: 3, 
                  child: Text('Linked devices')),
                const PopupMenuItem(
                  value: 4, 
                  child: Text('Starred messages')),
                const PopupMenuItem(
                  value: 'settings', 
                  child: Text('Settings')),
              ]),
            const SizedBox(width: 10),
          ],
          bottom: const TabBar(
            indicatorColor: CustomColors.kLightColor,
            tabs:[
              Tab(
                child: Text('Chats',
                style: CustomTextStyle.tabBarTextStyle,),),
              Tab(child: Text('Calls',
                  style: CustomTextStyle.tabBarTextStyle,),),
          ])
        ),
        body: TabBarView(children: [
          Center(
            child: ChatTab(
              chats: botchats,
              )
          ),
          Center(
            child: CallTab(
              todos: List.generate(2,(i) => CallItem(
              'Contact $i',
              'A description of what needs to be done for Todo $i',
              ),),
            ),
          ),
        ]),
        ),      
      );
  }
}