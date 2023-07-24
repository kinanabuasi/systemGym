import 'package:flutter/material.dart';
import 'package:systemgym/constants/colors.dart';

class FullProgressIndicatorWidget extends StatefulWidget {
  const FullProgressIndicatorWidget({super.key});

  @override
  State<FullProgressIndicatorWidget> createState() => _FullProgressIndicatorWidgetState();
}

class _FullProgressIndicatorWidgetState extends State<FullProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: const Center(
        child: CircularProgressIndicator(color: secondYellowColor),
      ),
    );
  }
}
