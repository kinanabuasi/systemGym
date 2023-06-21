// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart'; 
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Adding_a_TrainingSection_controller extends GetxController { 

  var IDController = TextEditingController();
  var TrainingDepartmentTitleController = TextEditingController();
  var DescriptionOfTheTrainingSectionController = TextEditingController();
  



  void onItemSave() {

    IDController.clear();
    TrainingDepartmentTitleController.clear();
    DescriptionOfTheTrainingSectionController.clear();
    

    update();
  }
}
