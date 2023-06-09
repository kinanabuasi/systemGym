// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../component/buttons/radio_button.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/settings/units_of_measure_controller.dart';

class UnitsOfMeasureScreen extends StatelessWidget {
  UnitsOfMeasureScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: black,
          appBar: SettingAppBar(title: "UNITS OF MEASURE"),
          body: Column(
            children: const [
              SizedBox(height: 20),
              MyRadioButton(title: "Metric", value: "metric"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, color: darkGrey),
              ),
              MyRadioButton(title: "Imperial", value: "imperial"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(thickness: 1, color: darkGrey),
              ),
            ],
          )),
    );
  }
}
