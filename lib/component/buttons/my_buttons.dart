import 'package:flutter/material.dart';

import '../my_text.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Widget widget;
  final Function() function;

  const MyButton({
    super.key,
    required this.color,
    required this.widget,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: color,
          ),
          onPressed: function,
          child: Padding(padding: const EdgeInsets.all(8.0), child: widget)),
    );
  }
}
