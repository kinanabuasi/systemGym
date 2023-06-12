// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Adding_a_Training_controller extends GetxController {
  var TheNameOfTheTrainingSetController = TextEditingController();
  var trainingNumberController = TextEditingController();
  var TrainingNameController = TextEditingController();
  var TrainingDescriptionController = TextEditingController();
  var VideoLinkFromTheSiteController = TextEditingController();
  var trainingTimeController = TextEditingController();
  var TheNumberOfIterationsController = TextEditingController();

  void onItemSave() {
    TheNameOfTheTrainingSetController.clear();
    trainingNumberController.clear();
    TrainingNameController.clear();
    TrainingDescriptionController.clear();
    trainingTimeController.clear();
    VideoLinkFromTheSiteController.clear();
    TheNumberOfIterationsController.clear();

    update();
  }
}
