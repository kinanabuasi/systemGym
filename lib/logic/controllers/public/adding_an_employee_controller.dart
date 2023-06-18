// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/employee_remote.dart';
import '../../../data/remote/section_remote.dart';
import 'All_section_controller.dart';

class Adding_an_employee_controller extends GetxController {
// var employees = <Employee>[].obs;
  final EmployeeRemoteDataSource employeeRemoteDataSource = EmployeeRemoteDataSource();
  final AllSectionController allSectionController = Get.put(AllSectionController());
  var isLoading = true.obs;
  var IDController = TextEditingController();
  var FullNameController = TextEditingController();
  var DateOfBirthController = TextEditingController();
  var NationalNumberController = TextEditingController();
  var AboutTheEmployeeController = TextEditingController();
  var ComprehensiveOverviewController = TextEditingController();
  var SectionController = TextEditingController();
  var EmployeeStatusController = TextEditingController();
  var StateController = TextEditingController();
  var TheBeginningOfTheShiftController = TextEditingController();
  var TheEndOfTheShiftController = TextEditingController();
  var TotalSalaryController = TextEditingController();
  String? selectedSection;
  String? selectedEmployeeStatus;
  List Section = [
    "50",
    "100",
    "200",
    "1000",
  ];
  List employeeStatus = [
    "S1",
    "S2",
    "S3",
  ];
  void onSectionChanged(String? val) {
    selectedSection = val!;
    update();
  }

  void onemployeeStatusChanged(String? val) {
    selectedEmployeeStatus = val!;
    update();
  }

  void onItemSave() {
    IDController.clear();
    FullNameController.clear();
    DateOfBirthController.clear();
    NationalNumberController.clear();
    AboutTheEmployeeController.clear();
    ComprehensiveOverviewController.clear();
    SectionController.clear();
    EmployeeStatusController.clear();
    StateController.clear();
    TheBeginningOfTheShiftController.clear();
    TheEndOfTheShiftController.clear();
    TotalSalaryController.clear();

    update();
  }

  Map<String, dynamic> initEmployee() {
    return {
      "name_ar": FullNameController.text.trim(),
      "name_en": FullNameController.text.trim(),
      "email": TotalSalaryController.text.trim(),
      "password": TotalSalaryController.text.trim(),
      "number": IDController.text.trim(),
      "description": TotalSalaryController.text.trim(),
      "section_id": SectionController.text.trim(),
      "full_description": TotalSalaryController.text.trim(),
      "emp_id": NationalNumberController.text.trim(),
      "date_of_birth": DateOfBirthController.text.trim(),
    };
  }

  addEmployee() async {
    isLoading.value = true;
    Map<String, dynamic> empData = initEmployee();
    final data = await employeeRemoteDataSource.addEmployee(empData);
    data.fold((l) => null, (r) {
      onItemSave();
      return showTopSnackBar(
        Overlay.of(Get.context!),
        const CustomSnackBar.success(
          message: "Good job, New Employee is added successfully",
          textStyle: TextStyle(color: mainColor, fontFamily: "Poppins"),
          backgroundColor: yellowColor,
          icon: Icon(Icons.sentiment_very_satisfied, color: mainColor, size: 120),
        ),
      );
    });
    isLoading.value = false;
  }

//   @override
// void onInit() {
// fetchEmployees();
// super.onInit();
// }

// void fetchEmployees() async {
// try {
// isLoading(true);
// var employeeList = await ApiService.getEmployees();
// if (employeeList != null) {
// employees.assignAll(employeeList);
// }
// } finally {
// isLoading(false);
// }
// }
}
