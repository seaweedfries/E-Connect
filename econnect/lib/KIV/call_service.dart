import 'dart:async';
import 'package:econnect/model/call_list.dart';

String url = 'https://hanmajid.com/api/calls';

class CallService {
  static Future<CallList> getCalls() async {
    final response = [{"id":1,"name":"Chris","avatarPath":"http:\/\/placekitten.com\/g\/200\/200","calls":[{"isIncoming":true,"isMissed":true,"timestamp":"2019-04-16T18:42:49.608466Z"},{"isIncoming":true,"isMissed":false,"timestamp":"2019-04-16T18:42:49.608466Z"}]},{"id":2,"name":"Cindy","avatarPath":"http:\/\/placekitten.com\/200\/200","calls":[{"isIncoming":false,"isMissed":false,"timestamp":"2019-04-16T18:42:49.608466Z"}]}];
    return CallList.fromJson(response);
  }
}
