// ignore_for_file: must_be_immutable, unused_import

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
import '../../../data/remote/club_remote.dart';

class AddNewDepartmentScreen extends StatefulWidget {
  const AddNewDepartmentScreen({Key? key}) : super(key: key);

  @override
  State<AddNewDepartmentScreen> createState() => _AddNewDepartmentScreenState();
}

class _AddNewDepartmentScreenState extends State<AddNewDepartmentScreen> {
  final ClubeRemoteDataSource _clubeRemoteDataSource = ClubeRemoteDataSource();
  final TextEditingController departmentName = TextEditingController();
  final TextEditingController departmentDesc = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor),
            ),
            const SizedBox(
              height: 30,
            ),
            MyTextFormField(
              hintText: "Department name",
              validator: () {},
              prefixIcon: Image.asset("assets/images/yellow_check.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            MyTextFormField(
              multiLines: true,
              hintText: "Section Description",
              validator: () {},
              prefixIcon: Image.asset("assets/images/yellow_dot.png"),
            ),
            const Spacer(),
            MyButton(
              color: yellowColor,
              widget: MyText(text: "Create now", color: black, fontSize: 18, fontWeight: FontWeight.w700),
              function: () {},
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  addDebartment() async {
    final Map<String, dynamic> initDepatrment = departmentData();
    final data = await _clubeRemoteDataSource.addDepartment(initDepatrment);
    data.fold((l) => null, (r) => null);
  }

  Map<String, dynamic> departmentData() {
    return {
      '12': departmentName.text.trim(),
      '13': departmentDesc.text.trim(),
    };
  }
}
