import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../component/my_text.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/settings/switch_button_controller.dart';

class NotificationsSettingsScreen extends StatelessWidget {
  final switchController = Get.put(SwitchController());
  NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: black,
          appBar: SettingAppBar(title: "NOTIFICATIONS"),
          body: Column(children: [
            const SizedBox(height: 20),
            ListTile(
              title: MyText(
                  text: "Workout Reminders",
                  color: white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
              trailing: Obx(() {
                return SizedBox(
                  height: 20,
                  width: 40,
                  child: FlutterSwitch(
                    toggleSize: 15,
                    inactiveColor: darkGrey,
                    activeColor: secondYellowColor,
                    activeToggleColor: black,
                    value: switchController.isWorkoutSwitched.value,
                    onToggle: (bool value) {
                      switchController.isWorkoutSwitched.value = value;
                    },
                  ),
                );
              }),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, color: darkGrey),
            ),
            ListTile(
              title: MyText(
                  text: "Program Notifications",
                  color: white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
              trailing: Obx(() {
                return SizedBox(
                  height: 20,
                  width: 40,
                  child: FlutterSwitch(
                    toggleSize: 15,
                    inactiveColor: darkGrey,
                    activeColor: secondYellowColor,
                    activeToggleColor: black,
                    value: switchController.isProgramSwitched.value,
                    onToggle: (bool value) {
                      switchController.isProgramSwitched.value = value;
                    },
                  ),
                );
              }),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(thickness: 1, color: darkGrey),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyText(
                      text: "You can manage your app notification",
                      color: white,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    MyText(
                        text: "permission in your ",
                        color: white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    MyText(
                        text: "phone settings",
                        color: secondYellowColor,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ])
                ],
              ),
            )
          ])),
    );
  }
}
