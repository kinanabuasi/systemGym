// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:systemgym/logic/controllers/public/All_coach_controller.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';


class All_coach_Screen extends StatelessWidget {
   All_coach_Screen({Key? key}) : super(key: key);
   late AllCoachController allCoachController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "All", yellowText: " coach"),
      body: Container(
        width: double.infinity,
        color: mainColor,
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            MyCounter(
                itemsLength: 6,
                id: allCoachController.subscriptionNumber!,
                name: allCoachController.fullName!,
                description: allCoachController.dateOfBirth!),
            SizedBox(
              height: 11,
            ),
          ],
        ),
      ),
    );
  }
}
