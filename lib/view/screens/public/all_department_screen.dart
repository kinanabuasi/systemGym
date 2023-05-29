// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';

class AllDepartmentScreen extends StatelessWidget {
  const AllDepartmentScreen({Key? key}) : super(key: key);
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
            MyCounter(itemsLength: 6, id: "ID", name: "name", description: "")
          ],
        ),
      ),
    );
  }
}
