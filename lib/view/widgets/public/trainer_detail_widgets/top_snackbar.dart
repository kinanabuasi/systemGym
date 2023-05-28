// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types, unused_import, unnecessary_cast, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void ShowTopSnackBar(String message, BuildContext context) {
  return showTopSnackBar(
    Overlay.of(context) as OverlayState,
    CustomSnackBar.success(
      message: message,
      textStyle: TextStyle(color: mainColor, fontFamily: "Poppins"),
      backgroundColor: yellowColor,
      icon: const Icon(Icons.sentiment_very_satisfied,
          color: mainColor, size: 120),
    ) as Widget,
  );
}
