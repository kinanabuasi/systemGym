// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LinearGradientContainer extends StatelessWidget {
  final Alignment beginAlignment;
  const LinearGradientContainer({
    Key? key,
    required this.beginAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: beginAlignment,
              end: Alignment.topCenter,
              colors: [mainColor, mainColor.withOpacity(.1)])),
    );
  }
}
