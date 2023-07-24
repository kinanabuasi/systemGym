import 'package:flutter/material.dart';
import 'package:systemgym/constants/colors.dart';

class LinerProgressIndicatorWidget extends StatefulWidget {
  const LinerProgressIndicatorWidget({super.key});

  @override
  State<LinerProgressIndicatorWidget> createState() => _LinerProgressIndicatorWidgetState();
}

class _LinerProgressIndicatorWidgetState extends State<LinerProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: LinearProgressIndicator(color: secondYellowColor),
    );
  }
}
