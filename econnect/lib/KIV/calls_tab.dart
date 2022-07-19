import 'package:flutter/material.dart';
import 'package:econnect/data/dialog_helpers.dart';
import 'package:econnect/model/call_list.dart';
import 'package:econnect/call_service.dart';
import 'package:econnect/widgets/call_item.dart';

class CallsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //future: _getCallList(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final callList = snapshot.data as CallList;
          return Text('nope');
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Text('nope');
      }
    );
  }
}
