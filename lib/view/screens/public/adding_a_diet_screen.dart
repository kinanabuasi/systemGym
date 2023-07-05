// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:systemgym/view/widgets/drop_down_widget.dart';
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
import '../../../logic/controllers/public/adding_a_diet_controller.dart';
import '../../../services/time_picker.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class Adding_a_diet_Screen extends StatelessWidget {
  Adding_a_diet_Screen({Key? key}) : super(key: key);
  final Adding_a_diet_controller _adding_a_diet_controller = Get.put(Adding_a_diet_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Adding a", yellowText: " diet"),
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
              Obx(() => UploadImageWidget(bacImage: _adding_a_diet_controller.imagePath.value!)),
              const SizedBox(
                height: 14,
              ),
              GestureDetector(
                onTap: () => _adding_a_diet_controller.initImage(),
                child: const Text(
                  "Upload image",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor, fontFamily: "Poppins"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFormField(
                controller: _adding_a_diet_controller.NameOfTheDietControllerAr,
                validator: () {},
                hintText: "name of the diet in Arabic",
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: _adding_a_diet_controller.NameOfTheDietController,
                validator: () {},
                hintText: "name of the diet in English",
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget(
                hint: "meal rating",
                onChange: (p0) {},
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget(
                hint: "Food Type",
                onChange: (p0) {},
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                  controller: _adding_a_diet_controller.DescriptionOfTheDietController,
                  multiLines: true,
                  validator: () {},
                  hintText: "Description of the diet",
                  prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(height: 13),
              MyTextFormField(
                  controller: _adding_a_diet_controller.componentsOfTheDietController,
                  multiLines: true,
                  validator: () {},
                  hintText: "components of the diet",
                  prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(
                height: 13,
              ),
              MyTextFormField(
                ontap: () async {
                  String date = await TimePickDialog.selectTime(context);
                  _adding_a_diet_controller.BeginningOfTheDietTimeController.text = date;
                },
                controller: _adding_a_diet_controller.BeginningOfTheDietTimeController,
                KeyboardType: TextInputType.number,
                validator: () {},
                hintText: "beginning of the diet time",
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 13,
              ),
              MyTextFormField(
                ontap: () async {
                  String date = await TimePickDialog.selectTime(context);
                  _adding_a_diet_controller.EndOfTheDietTimeController.text = date;
                },
                controller: _adding_a_diet_controller.EndOfTheDietTimeController,
                KeyboardType: TextInputType.number,
                validator: () {},
                hintText: "end of the diet time",
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 13,
              ),
              // MyTextFormField(
              //   controller: _adding_a_diet_controller.DietTimeIsOverController,
              //   KeyboardType: TextInputType.number,
              //   validator: () {},
              //   hintText: "Diet time is over",
              //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
              // ),
              const SizedBox(
                height: 18,
              ),
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
                  _adding_a_diet_controller.addData();
                },
              ),
              const SizedBox(
                height: 31,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
