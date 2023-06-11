import 'package:flutter/material.dart';

import '../../../component/my_text.dart';
import '../../../constants/colors.dart';
import '../../widgets/public/my_circular_progress.dart';

class InsightScreen extends StatelessWidget {
  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            MyCircularProgress(
                value: 0.80,
                height: 170,
                width: 170,
                widget: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                          text: "652 Cal",
                          color: white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                      MyText(
                          text: "active Calories",
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                ),
                valueColor: secondYellowColor)
          ],
        ),
      ),
    );
  }
}
