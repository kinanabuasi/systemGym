// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllEmployeeController {
  String id;
  String fullName;
  double totalSalary;
  String section;
  String DateOfBirth;
  String? NationalNumber;
  String? AboutTheEmployee;
  String? ComprehensiveOverview;
  String? Section;
  String? EmployeeStatus;
  String? State;
  String? TheBeginningOfTheShift;
  String? TheEndOfTheShift;
  String? TotalSalary;

  AllEmployeeController(
      {required this.id,
      required this.fullName,
      required this.totalSalary,
      required this.section,
      required this.DateOfBirth});
}