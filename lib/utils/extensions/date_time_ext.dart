import 'package:intl/intl.dart';

extension DateToString on DateTime {
  String toReadFormat() {
    return DateFormat('dd MMMM yyyy').format(this);
  }

  String toyMMMdFormat() {
    return DateFormat.yMMMd().format(this);
  }

  String toDateWithJmFormat() {
    return '${DateFormat.jm().format(this)}, ${DateFormat.yMMMd().format(this)} ';
  }

  String toReadFormatWithSlash() {
    return DateFormat.yMd().format(this);
  }

  String toMonthYearFormat() {
    return DateFormat('MMM yyyy').format(this);
  }

  String toDayMonthFormat() {
    return DateFormat('dd/MM').format(this);
  }

  String toHourFormat() {
    return DateFormat('HH:mm').format(this);
  }

  String toJmFormat() {
    return DateFormat.jm().format(this);
  }

  String getWeekDayString() {
    return DateFormat.EEEE().format(this);
  }

  String getJmFormat() {
    return DateFormat.jm().format(this);
  }

  bool isTheSameDateWith(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isTheSameHourWith(DateTime other) {
    return hour == other.hour && minute == other.minute;
  }

  DateTime toUtcKeepDate() {
    return DateTime.utc(year, month, day);
  }
}
