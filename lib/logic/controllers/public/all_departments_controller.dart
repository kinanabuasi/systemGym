// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class All_Departments_controller extends GetxController {
  All_Departments_controller({
    this.departmentName,
    this.departmentDescription,
  });
  final String? departmentName;
  final String? departmentDescription;
}