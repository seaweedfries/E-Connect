
import 'dart:convert';

import 'package:econnect/model/call.dart';

CallList callListFromJson(String str) {
  var jsonData = json.decode(str);
  return CallList.fromJson(jsonData);
}

class CallList {
  List<Call> calls;

  CallList({
    required this.calls,
  });

  factory CallList.fromJson(List<dynamic> json) {
    List<Call> calls = <Call>[];
    calls = json.map<Call>((i) => Call.fromJson(i)).toList();

    return new CallList(
      calls: calls,
    );
  }
}