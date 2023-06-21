// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/all_departments_controller.dart';

class AllDepartmentScreen extends StatelessWidget {
  AllDepartmentScreen({Key? key}) : super(key: key);
  late All_Departments_controller all_Departments_controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "All", yellowText: " Department"),
      body: Container(
        width: double.infinity,
        color: mainColor,
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            MyCounter(
                itemsLength: 6,
                id: all_Departments_controller.departmentDescription!,
                name: all_Departments_controller.departmentName!,
                description: all_Departments_controller.departmentDescription!)
          ],
        ),
      ),
    );
  }
}
