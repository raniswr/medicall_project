import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateMethods {
  static DateTime? parse(String? date) {
    try {
      return DateTime.parse(date!);
    } catch (e) {
      return null;
    }
  }

  static bool isBeforeNow(String? date) {
    if (date == null) return false;
    return DateTime.parse(date).isBefore(DateTime.now());
  }

  static bool isAfterNow(String? date) {
    if (date == null) return false;
    return DateTime.parse(date).isAfter(DateTime.now());
  }

  static bool isAfter(String? dateA, String? dateB) {
    if (dateA == null || dateB == null) return false;
    return DateTime.parse(dateA).isAfter(DateTime.parse(dateB));
  }

  static bool isBefore(String? dateA, String? dateB) {
    if (dateA == null || dateB == null) return false;
    return DateTime.parse(dateA).isBefore(DateTime.parse(dateB));
  }

  static bool isYearPassed(String? date) {
    if (date == null) return false;
    final parsedDate = DateTime.parse(date);
    return parsedDate.year < DateTime.now().year;
  }

  static Duration _getGMTDuration() {
    //get current system local time
    DateTime? currentTime = DateTime?.now();
    //get time diff
    var timezoneOffset = currentTime.timeZoneOffset;
    return Duration(
      hours: timezoneOffset.inHours,
      minutes: timezoneOffset.inMinutes % 60,
    );
  }

  static DateTime? convertToGMT(DateTime? localDate) {
    if (localDate == null) return null;
    final duration = _getGMTDuration();
    return localDate.subtract(duration);
  }

  static DateTime? convertFromGMT(String gmtDate) {
    final oldDate = parse(gmtDate);
    if (oldDate == null) return null;
    final duration = _getGMTDuration();
    return oldDate.add(duration);
  }

  static String? ddMMMyyyy(String date) {
    var parsedDate = parse(date);
    if (parsedDate == null) return "";
    return DateFormat('dd MMM yyyy').format(parsedDate);
  }

  static String? ddMMM(String date) {
    var parsedDate = parse(date);
    if (parsedDate == null) return "";
    return DateFormat('dd MMM').format(parsedDate);
  }

  static String? ddMMMyyyyhhmma(
    dynamic date,
  ) {
    DateTime? parsedDate;
    if (date is DateTime?) {
      parsedDate = date;
    } else if (date is String?) {
      parsedDate = parse(date!);
    }
    if (parsedDate == null) return "";
    return DateFormat('dd MMM yyyy hh:mm a').format(parsedDate);
  }

  static String? yyyyMMddhhmma(DateTime? date) {
    if (date == null) return "";
    return DateFormat('yyyy-MM-dd hh:mm a').format(date);
  }

  static String? mMM(String date) {
    var parsedDate = parse(date);
    if (parsedDate == null) return "";
    return DateFormat(
      'MMM',
      Get.locale.toString(),
    ).format(parsedDate);
  }

  static String? mMMyyyy(String date) {
    var parsedDate = parse(date);
    if (parsedDate == null) return "";
    return DateFormat(
      'MMMM yyyy',
      Get.locale.toString(),
    ).format(parsedDate);
  }
}

class SnackBarMethods {
  // static void _showSnackBar(String text, BuildContext context) {
  //   SnackBar snackBar = SnackBar(content: Text(text));
  //   Scaffold.of(context)._showSnackBar(snackBar);
  // }
  static void success(String message, [String title = "Success"]) {
    _showSnackBar(
      title: title,
      message: message,
      backgroundColor: Colors.greenAccent,
    );
  }

  static void warn(String message, [String title = "Note"]) {
    _showSnackBar(
      title: title,
      message: message,
      backgroundColor: Colors.orangeAccent,
    );
  }

  static void error(String message, [String title = "Error"]) {
    _showSnackBar(
      title: title,
      message: message,
      backgroundColor: Colors.redAccent,
    );
  }

  static void _showSnackBar({
    String? message,
    String? title,
    Color? backgroundColor,
    Color textColor = Colors.white,
  }) {
    Get.snackbar(
      title!,
      message!,
      backgroundColor: backgroundColor,
      colorText: textColor,
    );
  }
}
