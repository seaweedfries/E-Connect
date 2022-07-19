import 'package:flutter/material.dart';
import 'dart:async';

import '../constants.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({Key? key}) : super(key: key);

  @override
  State<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
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
              'Preparing Silver Mode...',
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