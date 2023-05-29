// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import '../../../component/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../constants/fonts.dart';
import '../../../logic/controllers/public/adding_an_employee_controller.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';
import '../../widgets/public/trainer_detail_widgets/view_fields.dart';

class meal_details_Screen extends StatelessWidget {
  meal_details_Screen({Key? key}) : super(key: key);
  Adding_an_employee_controller adding_an_employee_controller =
      Get.put(Adding_an_employee_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "meal", yellowText: " details"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          child: Column(children: [
            SizedBox(
              height: 26,
            ),
            Image.asset("assets/images/meal.png"),
            SizedBox(
              height: 60,
            ),
            OneLine_field("meal time", "breakfast"),
            SizedBox(
              height: 24,
            ),
            OneLine_field("name diet", "Cured meat"),
            SizedBox(
              height: 18,
            ),
            MultiLine_field(
                "Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. 1- Reference site about Lorem 3- Ipsum, giving information on its origins, as well as a random Lipsum generator."),
            SizedBox(
              height: 18,
            ),
            MultiLine_field(
                "Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. 1- Reference site about Lorem 3- Ipsum, giving information on its origins, as well as a random Lipsum generator."),
          SizedBox(
              height: 20,
            ),
            OneLine_field("start time:", "12:12 PM"),
            SizedBox(
              height: 14,
            ),
            OneLine_field("end time:", "12:55 PM"),
            SizedBox(
              height: 228,
            ),
          ]),
        ),
      ),
    );
  }
}
