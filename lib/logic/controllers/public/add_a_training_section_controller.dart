// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/section_remote.dart';
import '../../../data/remote/tournament_remote.dart';

class Adding_training_section_controller extends GetxController {
  final SectionRemoteDataSource _sectionRemoteDataSource = SectionRemoteDataSource();
  final RxBool isLoading = false.obs;
  var IDController = TextEditingController();
  var TrainingDepartmentTitleController = TextEditingController();
  var DescriptionOfTheTrainingSectionController = TextEditingController();

  void onItemSave() {
    IDController.clear();
    TrainingDepartmentTitleController.clear();
    DescriptionOfTheTrainingSectionController.clear();
    update();
  }

  addTraningSection() async {
    isLoading.value = true;
    Map<String, dynamic> traningdData = intiData();
    final data = await _sectionRemoteDataSource.addSection(traningdData);
    data.fold((l) => null, (r) => null);
    isLoading.value = false;
  }

  Map<String, dynamic> intiData() {
    return {
      "name_ar": "wdw",
      "name_en": "dswwd",
      "number": IDController.text.trim(),
      "section_description": DescriptionOfTheTrainingSectionController.text.trim(),
      "department_address": TrainingDepartmentTitleController.text.trim(),
      "image_path": "1.jpj",
    };
  }
}
