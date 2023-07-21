// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/data/remote/seeders_remote.dart';
import 'package:systemgym/model/seeders_level_model.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/traning_remote.dart';

class Adding_a_Training_controller extends GetxController {
  final SeedersRemote _seedersRemote = SeedersRemote();
  final TraningRemoteDataSource _traningRemoteDataSource = TraningRemoteDataSource();
  var TheNameOfTheTrainingSetControllerEN = TextEditingController();
  var TheNameOfTheTrainingSetControllerAR = TextEditingController();
  var trainingNumberController = TextEditingController();
  var TrainingDescriptionController = TextEditingController();
  var VideoLinkFromTheSiteController = TextEditingController();
  var trainingTimeController = TextEditingController();
  var TheNumberOfIterationsController = TextEditingController();
  String? imagePath;
  late SeedersIdModel groupTypeModel;
  RxBool isLoading = RxBool(false);

  initImagePath(String path) {
    imagePath = path;
  }

  Future<List<SeedersIdModel>> getAllGroupType() async {
    List<SeedersIdModel> groupType = [];
    final data = await _seedersRemote.allTraningGroup();
    data.fold((l) => null, (r) => groupType = r);
    return groupType;
  }

  initTournmantTypeId(SeedersIdModel groupType) {
    groupTypeModel = groupType;
  }

  addTraining() async {
    isLoading.value = true;
    Map<String, dynamic> trainingData = initData();
    final data = await _traningRemoteDataSource.addTraning(trainingData);
    isLoading.value = false;
    data.fold((l) => null, (r) => null);
    // }
  }

  Map<String, dynamic> initData() {
    return {
      'name_ar': TheNameOfTheTrainingSetControllerAR.text.trim(),
      'name_en': TheNameOfTheTrainingSetControllerEN.text.trim(),
      'number': trainingNumberController.text.trim(),
      'description': TrainingDescriptionController.text.trim(),
      'link_website': VideoLinkFromTheSiteController.text.trim(),
      'duration_of_training': trainingTimeController.text.trim(),
      'training_number': TheNameOfTheTrainingSetControllerAR.text.trim(),
      'number_of_iterations': TheNumberOfIterationsController.text.trim(),
      'image_path': imagePath,
      'training_group_id': TheNameOfTheTrainingSetControllerAR.text.trim(),
    };
  }
}
