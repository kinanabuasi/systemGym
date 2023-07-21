// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/services/snackbar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/section_remote.dart';
import '../../../data/remote/tournament_remote.dart';

class Adding_training_section_controller extends GetxController {
  final SectionRemoteDataSource _sectionRemoteDataSource = SectionRemoteDataSource();
  final RxBool isLoading = false.obs;
  var NumberController = TextEditingController();
  var TrainingDepartmentTitleController = TextEditingController();
  var TrainingDepartmentTitleControllerAR = TextEditingController();
  var DescriptionOfTheTrainingSectionController = TextEditingController();
  var DepartmentAddressController = TextEditingController();
  String? imagePath;

  initImagePath(String path) {
    imagePath = path;
  }

  addTraningSection() async {
    isLoading.value = true;
    Map<String, dynamic> traningdData = intiData();
    final data = await _sectionRemoteDataSource.addSection(traningdData);
    isLoading.value = false;
    data.fold((l) => null, (r) {
      SnackbarUtil.showSuccess(message: 'Good job, New Training section is added successfully');
    });
  }

  Map<String, dynamic> intiData() {
    return {
      "name_ar": TrainingDepartmentTitleController.text.trim(),
      "name_en": TrainingDepartmentTitleController.text.trim(),
      "number": NumberController.text.trim(),
      "section_description": DescriptionOfTheTrainingSectionController.text.trim(),
      "department_address": TrainingDepartmentTitleController.text.trim(),
      "image_path": imagePath,
    };
  }
}
