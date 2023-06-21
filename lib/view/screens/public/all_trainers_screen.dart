// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/all_trainers_controller.dart';

class All_trainers_Screen extends StatelessWidget {
  All_trainers_Screen({Key? key}) : super(key: key);
  late All_Trainers_controller all_Trainers_controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "All", yellowText: " employee"),
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
                id: all_Trainers_controller.userName!,
                name:all_Trainers_controller.fullName!,
                description: all_Trainers_controller.aboutTheTrainer!),
            SizedBox(
              height: 11,
            ),
          ],
        ),
      ),
    );
  }
}
