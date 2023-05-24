// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class top_snackbar extends StatelessWidget {
  const top_snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TapBounceContainer(
      child: CustomSnackBar.success(
        message: "Good job, New Employee is added successfully",
        textStyle: TextStyle(color: mainColor, fontFamily: "Poppins"),
        backgroundColor: yellowColor,
        icon: const Icon(Icons.sentiment_very_satisfied,
            color: mainColor, size: 120),
      ),
    );
  }
}
