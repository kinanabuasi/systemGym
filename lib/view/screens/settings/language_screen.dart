import 'package:flutter/material.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../component/buttons/radio_button.dart';
import '../../../constants/colors.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: black,
          appBar: SettingAppBar(title: "LANGUAGE"),
          body: Column(
            children: [
              SizedBox(height: 20),
              MyRadioButton(title: "English", value: "english"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, color: darkGrey),
              ),
              MyRadioButton(title: "Arabic", value: "arabic"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, color: darkGrey),
              ),
            ],
          )),
    );
  }
}
