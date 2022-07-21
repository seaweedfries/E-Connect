import 'package:flutter/material.dart';
import 'dart:async';

import '../constants.dart';

class NewLoadScreen extends StatefulWidget {
  const NewLoadScreen({Key? key}) : super(key: key);

  @override
  State<NewLoadScreen> createState() => _NewLoadScreenState();
}

class _NewLoadScreenState extends State<NewLoadScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false), 
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.kPrimaryColor,
      ),
      body: Center(
        //padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Leaving Silver Mode...',
              style: Theme.of(context).textTheme.headline6,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}