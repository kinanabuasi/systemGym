// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/All_employees_controller.dart';
import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class All_employee_Screen extends GetView<AllEmployeesController> {
  const All_employee_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "All", yellowText: " employee"),
      body: Container(
        width: double.infinity,
        color: mainColor,
        child: Obx(() => Visibility(
              visible: controller.isLoading.value,
              replacement: ProgressIndicatorWidget(),
              child: ListView.separated(
                  itemBuilder: (context, i) => ContactInfo(
                        id: controller.allEmp[i].empId.toString(),
                        name: controller.allEmp[i].name!.en!,
                        description: controller.allEmp[i].description ?? '',
                      ),
                  separatorBuilder: (context, i) => SizedBox(
                        height: 45,
                      ),
                  itemCount: controller.allEmp.length),
            )),
      ),
    );
  }
}
