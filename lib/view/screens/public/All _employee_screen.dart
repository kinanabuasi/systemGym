// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/All_employees_controller.dart';

class All_employee_Screen extends StatelessWidget {
   All_employee_Screen({Key? key}) : super(key: key);
  late AllEmployeeController allEmployeeController;
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
                id: allEmployeeController.id,
                name: allEmployeeController.fullName,
                description: allEmployeeController.DateOfBirth),
            SizedBox(
              height: 11,
            ),
          ],
        ),
      ),
    );
  }
}
