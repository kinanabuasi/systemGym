import 'package:flutter/material.dart';

class TimePickDialog {
  TimePickDialog._();

  static Future<String> selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });

    if (picked != null && picked != TimeOfDay.now()) {
      return picked.toString();
    }
    return '';
  }
}
