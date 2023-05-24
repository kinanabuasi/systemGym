// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart'; 
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Adding_an_employee_controller extends GetxController { 

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
}
