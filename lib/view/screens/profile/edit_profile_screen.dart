import 'package:flutter/material.dart';
import 'package:systemgym/component/my_text.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: black,
      appBar: SettingAppBar(title: "EDIT PROFILE"),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
        child: MyButton(
            color: secondYellowColor,
            widget: MyText(
                text: "Save",
                color: black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
            function: () {}),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Center(
              child: UploadImageWidget(
                radius: 65,
                bacImage: "assets/images/person1.png",
                circleHeight: 120,
                circleWidth: 120,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Divider(thickness: 1, color: darkGrey),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: MyText(
                  text: "Name",
                  color: secondYellowColor,
                  fontSize: 11,
                  fontWeight: FontWeight.normal),
            ),
            MyTextFormField(
              enabledBorderColor: darkGrey,
              focusedBorderColor: secondYellowColor,
              textColor: white,
              fillColor: Colors.transparent,
              validator: () {},
              hintText: "User Name",
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: MyText(
                  text: "Email",
                  color: secondYellowColor,
                  fontSize: 11,
                  fontWeight: FontWeight.normal),
            ),
            MyTextFormField(
              enabledBorderColor: darkGrey,
              focusedBorderColor: secondYellowColor,
              textColor: white,
              fillColor: Colors.transparent,
              validator: () {},
              hintText: "Email",
            ),
          ],
        ),
      ),
    ));
  }
}
