// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class MyCircularProgress extends StatelessWidget {
  double value;
  double height;
  double width;
  Widget widget;
  Color valueColor;

  MyCircularProgress({
    Key? key,
    required this.value,
    required this.height,
    required this.width,
    required this.widget,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: CircularProgressIndicator(
              value: value, backgroundColor: darkGrey, color: valueColor),
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: widget,
        ),
      ],
    );
  }
}
