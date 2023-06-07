import 'package:flutter/material.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/component/text_form/my_text_form_field.dart';

import '../../../../component/app_bars/settings_app_bar.dart';
import '../../../../component/buttons/my_buttons.dart';
import '../../../../constants/colors.dart';

class WriteReviewsScreen extends StatelessWidget {
  const WriteReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        appBar: SettingAppBar(title: "WRITE A REVIEW"),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: [
                MyText(
                    text: "4.6",
                    color: white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor),
                  width: 200,
                  height: 20,
                  child: const LinearProgressIndicator(
                    semanticsValue: "Rating",
                    semanticsLabel: "Rating",
                    backgroundColor: darkGrey,
                    color: secondYellowColor,
                    value: 0.6,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            MyTextFormField(
              validator: () {},
              hintText: "Review (Optional)",
              multiLines: true,
              fillColor: darkGrey,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyButton(
                color: secondYellowColor,
                function: () {},
                Circular: 40,
                widget: MyText(
                    text: "Send",
                    color: black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
