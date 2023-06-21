// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllTrainingSectionController {
  AllTrainingSectionController({
    this.id,
    this.trainingDepartmentTitle,
    this.descriptionOfTheTrainingSection,
  });
  final String? id;
  final String? trainingDepartmentTitle;
  final String? descriptionOfTheTrainingSection;
}