import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../component/my_text.dart';
import '../../../constants/colors.dart';
import '../../../constants/routes.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        appBar: const SettingAppBar(title: "SETTINGS"),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                        onTap: () {
                          Get.toNamed(screensRoutes[index]);
                        },
                        trailing: Icon(Icons.chevron_right, color: white),
                        title: MyText(
                            text: screensNames[index],
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        color: darkGrey,
                        thickness: 1,
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }

  List<String> screensNames = [
    "Units of Measure",
    "Notifications",
    "Language",
    "Contact Us"
  ];
  List<String> screensRoutes = [
    Routes.unitsOfMeasureScreen,
    Routes.notificationsScreen,
    Routes.languageScreen,
    Routes.contactUsScreen
  ];
}
