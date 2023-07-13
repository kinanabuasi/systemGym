// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../logic/controllers/public/adding_an_employee_controller.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class Adding_a_training_Screen extends StatelessWidget {
  Adding_a_training_Screen({Key? key}) : super(key: key);
  Adding_an_employee_controller adding_an_employee_controller = Get.put(Adding_an_employee_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Add a", yellowText: " training section"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          color: mainColor,
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              UploadImageWidget(),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "Upload image",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor, fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: 30,
              ),
              // MyTextFormField(
              //   controller: adding_an_employee_controller.IDController,
              //   validator: () {},
              //   hintText: "The name of the training set",
              //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
              // ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_an_employee_controller.FullNameController,
                KeyboardType: TextInputType.datetime,
                hintText: "training number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_an_employee_controller.FullNameController,
                hintText: "Training name",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(multiLines: true, validator: () {}, hintText: "Training description", prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(
                height: 16,
              ),
              // MyTextFormField(
              //   controller: adding_an_employee_controller.IDController,
              //   validator: () {},
              //   hintText: "Video - link from the site",
              //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
              // ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_an_employee_controller.FullNameController,
                hintText: "training time",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_an_employee_controller.FullNameController,
                KeyboardType: TextInputType.datetime,
                hintText: "The number of iterations",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(height: 23),
              MyButton(
                color: yellowColor,
                widget: MyText(
                  text: "Create now",
                  color: black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontfamily: Poppins,
                ),
                function: () {
                  return ShowTopSnackBar("Good job, New Training is added successfully", context);
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
