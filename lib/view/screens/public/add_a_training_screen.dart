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
import '../../../logic/controllers/public/add_a_training_controller.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/full_progress_indicator.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class Adding_a_training_Screen extends StatelessWidget {
  Adding_a_training_Screen({Key? key}) : super(key: key);
  final Adding_a_Training_controller _controller = Get.put(Adding_a_Training_controller());
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                  UploadImageWidget(onSelect: (p0) => _controller.initImagePath(p0)),
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
                  MyTextFormField(
                    controller: _controller.TheNumberOfIterationsController,
                    KeyboardType: TextInputType.datetime,
                    hintText: "training number",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: _controller.TheNameOfTheTrainingSetControllerEN,
                    hintText: "Training name EN",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: _controller.TheNameOfTheTrainingSetControllerAR,
                    hintText: "Training name AR",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                      controller: _controller.TrainingDescriptionController,
                      multiLines: true,
                      validator: () {},
                      hintText: "Training description",
                      prefixIcon: Image.asset("assets/images/yellow_dot.png")),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    ontap: () async {
                      // String time = await TimePickDialog.selectTime(context);
                      String time = await Get.to(() => DatePickerWidget());
                      _controller.trainingTimeController.text = time;
                    },
                    enable: true,
                    controller: _controller.trainingTimeController,
                    hintText: "training time",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                      validator: () {},
                      hintText: "The number of iterations",
                      prefixIcon: Image.asset("assets/images/yellow_check.png"),
                      controller: _controller.TheNumberOfIterationsController),
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
        ),
        Obx(() => Visibility(visible: _controller.isLoading.value, child: FullProgressIndicatorWidget()))
      ],
    );
  }
}
