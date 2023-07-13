// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:systemgym/services/pick_image.dart';
import 'package:systemgym/view/widgets/date_picker.dart';
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
import '../../../model/section_model.dart';
import '../../../services/time_picker.dart';
import '../../widgets/drop_down_widget.dart';
import '../../widgets/full_progress_indicator.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class adding_an_employee_Screen extends StatefulWidget {
  adding_an_employee_Screen({Key? key}) : super(key: key);
  @override
  State<adding_an_employee_Screen> createState() => _adding_an_employee_ScreenState();
}

class _adding_an_employee_ScreenState extends State<adding_an_employee_Screen> {
  final controller = Get.put<Adding_an_employee_controller>(Adding_an_employee_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Adding an", yellowText: " employee"),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Upload image",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor, fontFamily: "Poppins"),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // MyTextFormField(
                  //   controller: controller.IDController,
                  //   validator: () {},
                  //   hintText: "#ID",
                  //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  // ),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  MyTextFormField(
                    controller: controller.FullNameController,
                    hintText: "Name en",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.FullNameControllerAR,
                    hintText: "Name ar",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.emailController,
                    hintText: "Email",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.passwordController,
                    hintText: "Password",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    ontap: () async {
                      String date = await Get.to(DatePickerWidget());
                      controller.DateOfBirthController.text = date;
                    },
                    controller: controller.DateOfBirthController,
                    KeyboardType: TextInputType.datetime,
                    enable: false,
                    hintText: "date of birth",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.NationalNumberController,
                    hintText: "National Number",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                      controller: controller.DescriptionController,
                      multiLines: true,
                      validator: () {},
                      hintText: "About the employee",
                      prefixIcon: Image.asset("assets/images/yellow_dot.png")),
                  const SizedBox(
                    height: 21,
                  ),
                  MyTextFormField(
                      controller: controller.fullDescriptionController,
                      multiLines: true,
                      validator: () {},
                      hintText: "Comprehensive overview",
                      prefixIcon: Image.asset("assets/images/yellow_dot.png")),
                  const SizedBox(height: 16),
                  DropDownWidget<SectionModel>(
                    asyncData: controller.getAllSection(),
                    hint: "Section",
                    onChange: (p0) => controller.selectSection(p0),
                  ),
                  const SizedBox(height: 16),
                  DropDownWidget(
                    hint: "employee status",
                    onChange: (p0) {},
                  ),
                  const SizedBox(height: 42),
                  MyTextFormField(
                      ontap: () async {
                        String time = await TimePickDialog.selectTime(context);
                        controller.TheBeginningOfTheShiftController.text = time;
                      },
                      controller: controller.TheBeginningOfTheShiftController,
                      enable: true,
                      validator: () {},
                      hintText: "The beginning of the shift",
                      prefixIcon: Image.asset("assets/images/yellow_check.png")),
                  const SizedBox(height: 16),
                  MyTextFormField(
                      ontap: () async {
                        String time = await TimePickDialog.selectTime(context);
                        controller.TheEndOfTheShiftController.text = time;
                      },
                      controller: controller.TheEndOfTheShiftController,
                      validator: () {},
                      enable: true,
                      hintText: "The end of the shift",
                      prefixIcon: Image.asset("assets/images/yellow_check.png")),
                  const SizedBox(height: 16),
                  MyTextFormField(
                      controller: controller.TotalSalaryController, validator: () {}, hintText: "total salary", prefixIcon: Image.asset("assets/images/yellow_check.png")),
                  const SizedBox(height: 88),
                  MyButton(
                    color: yellowColor,
                    widget: MyText(text: "Create now", color: black, fontSize: 16, fontWeight: FontWeight.w700),
                    function: () {
                      controller.addEmployee();
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Obx(() => Visibility(visible: controller.isLoading.value, child: FullProgressIndicatorWidget()))
        ],
      ),
    );
  }
}
