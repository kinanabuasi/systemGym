// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../component/app_bar.dart';
import '../../../component/my_counter.dart';
import '../../../constants/colors.dart';

class All_trainers_Screen extends StatelessWidget {
  const All_trainers_Screen({Key? key}) : super(key: key);
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
            MyCounter(itemsLength: 6, id: "#ID", 
            name: "#dietName", description: "dateofbirth"),
            SizedBox(
              height: 11,
            ), 
          ],
        ),
      ),
    );
  }
}
