import 'package:intl/intl.dart';

class TimeService {
  DateTime convertToUTC(DateTime date, {bool returnString = false}) {
    String dc = DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
    String n = dc.toString();
    DateTime d = DateFormat("yyyy-MM-dd HH:mm:ss").parse(n).toUtc();
    return d;
  }

  DateTime convertFromUTC(DateTime date, {bool returnString = false}) {
    String dc = DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
    String n = dc.toString();
    DateTime d = DateFormat("yyyy-MM-dd HH:mm:ss").parse(n, true).toLocal();
    return d;
  }

  DateTime getNowUTC() {
    var dd = DateTime.now();
    String n = dd.toString();
    // print(n);
    DateTime d = DateFormat("yyyy-MM-dd HH:mm:ss").parse(n).toUtc();
    return d;
  }

  DateTime getNowLocal() {
    return DateTime.now();
  }

  String unixString(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
  }

  String formattedUnixDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  String formattedUnixTime(DateTime date) {
    return DateFormat('HH:mm:ss').format(date);
  }

  String formattedDateOnly(DateTime date) {
    return DateFormat('d MMM,y').format(date);
  }

  String formattedTimeOnly(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }

  bool isFuture(DateTime date1, {bool utc = true}) {
    DateTime now;
    if(utc) {
      now = getNowUTC();
    } else {
      now = getNowLocal();
    }
    return date1.compareTo(now) > 0;
  }
}