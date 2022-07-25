import 'package:flutter/material.dart';
import '../constants.dart';

class SilverScreen extends StatefulWidget {
  const SilverScreen({Key? key}) : super(key: key);

  @override
  State<SilverScreen> createState() => _SilverScreenState();
}

class _SilverScreenState extends State<SilverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Silver Mode'),
          backgroundColor: CustomColors.kPrimaryColor,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 16.0),
                SwitchListTile(
                  title: const Text('Enable Silver Mode',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500)),
                  value: false,
                  onChanged: (bool value) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/loadscreen', (_) => false);
                  },
                ),
                const SizedBox(height: 25.0),
                Image(
                  image: AssetImage(
                    'assets/images/user.jpg',
                  ),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Silver Mode is an experimental feature that allows you to use a more simplified version of the app and interact with a built-in helpbot.',
                  style: TextStyle(fontSize: 13.0),
                ),
              ]),
        ));
  }
}
