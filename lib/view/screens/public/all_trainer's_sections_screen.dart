// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:systemgym/logic/controllers/public/all_trainer\'s_sections_controller.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';

class All_trainings_section_Screen extends StatelessWidget {
  All_trainings_section_Screen({Key? key}) : super(key: key);
  late AllTrainingSectionController allTrainingSectionController;
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
                id: allTrainingSectionController.id!,
                name: allTrainingSectionController.trainingDepartmentTitle!,
                description: allTrainingSectionController.descriptionOfTheTrainingSection!),
            SizedBox(
              height: 11,
            ),
          ],
        ),
      ),
    );
  }
}
