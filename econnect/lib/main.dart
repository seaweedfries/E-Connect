import 'package:econnect/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:econnect/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen(),
        //'/newhome':(context) => NewHomeScreen(),
        //'/newsettings':(context) => NewSettingsScreen(),

      },
      );
  }
}
