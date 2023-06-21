// ignore_for_file: must_be_immutable, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/adding_a_new_department_controller.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class AddNewDepartmentScreen extends StatelessWidget {
  AddDepartmentController addDepartmentController=Get.put(AddDepartmentController());
  AddNewDepartmentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Add a", yellowText: " new Department"),
      body: Container(
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
              "upload image",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: yellowColor),
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextFormField(
              controller: addDepartmentController.departmentNameController,
              hintText: "Department name",
              validator: () {},
              prefixIcon: Image.asset("assets/images/yellow_check.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            MyTextFormField(
              controller: addDepartmentController.departmentDescriptionController,
              multiLines: true,
              hintText: "Department Description",
              validator: () {},
              prefixIcon: Image.asset("assets/images/yellow_dot.png"),
            ),
            const Spacer(),
            MyButton(
              color: yellowColor,
              widget: MyText(
                  text: "Create now",
                  color: black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
              function: ()  {
                  addDepartmentController.addDepartment();
                  return ShowTopSnackBar(
                      "Good job, a New Department is added successfully",
                      context);
                },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
