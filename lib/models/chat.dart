import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Chat {
  String username;
  String time = "10:00am";
  String message;
  String url;
  late bool isDayTime;

  Chat({required this.username, required this.message, required this.url});
  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = DateFormat.jm().format(now);
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    } catch (e) {
      print('caught error: $e');
      time = 'could not update time data';
    }
  }
}
