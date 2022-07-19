import 'package:flutter/material.dart';
import 'package:econnect/text_helpers.dart';
import 'package:econnect/model/call.dart';

class CallItem extends StatelessWidget {
  final Call call;


  CallItem({
    required this.call,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      //painter: LinePainter(),
      child: ListTile(
        leading: GestureDetector(
          onTap: () {
            ;
          },
          child: CircleAvatar(
            radius: 30.0,
          ),
        ),
        
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            call.lastCall.isIncoming
                ? Icon(
                    Icons.call_received,
                    color: call.lastCall.isMissed ? Colors.red : Colors.green,
                    size: 16.0,
                  )
                : Icon(
                    Icons.call_made,
                    color: call.lastCall.isMissed ? Colors.red : Colors.green,
                    size: 16.0,
                  ),
            call.callDetails.length > 1
                ? Text(
                    '(${call.callDetails.length})',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  )
                : Container(),
            Text(
              'Today',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        trailing: IconButton(
            icon: Icon(
              Icons.call,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {}),
        onTap: () {},
      ),
    );
  }
}
