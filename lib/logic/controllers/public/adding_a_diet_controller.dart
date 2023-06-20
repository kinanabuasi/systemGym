// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Adding_a_diet_controller extends GetxController {
  var IDController = TextEditingController();
  var MealRatingController = TextEditingController();
  var NameOfTheDietController = TextEditingController();
  var DescriptionOfTheDietController = TextEditingController();
  var BeginningOfTheDietTimeController = TextEditingController();
  var DietTimeIsOverController = TextEditingController();

 List<String> Diet = [];

  getAllDiets() {}
  void onItemSave() {
    IDController.clear();
    MealRatingController.clear();
    NameOfTheDietController.clear();
    DescriptionOfTheDietController.clear();
    BeginningOfTheDietTimeController.clear();
    DietTimeIsOverController.clear();

    update();
  }
}

class Diet {
  var ID;
  var MealRating;
  var NameOfTheDiet;
  var DescriptionOfTheDiet;
  var BeginningOfTheDietTime;
  var DietTimeIsOver;
}
