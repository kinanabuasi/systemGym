// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Adding_a_diet_controller extends GetxController {
  var IDController = TextEditingController();
  var NameOfTheDietController = TextEditingController();
  var DescriptionOfTheDietController = TextEditingController();
  var ComponentsOfTheDietController = TextEditingController();
  var BeginningOfTheDietTimeController = TextEditingController();
  var DietTimeIsOverController = TextEditingController();
  String? selectedDiet;
  String? selectedMealRating;

  List<String> Diet = [];
  List<String> MealRating = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  getAllDiets() {}
  void onItemSave() {
    IDController.clear();
    NameOfTheDietController.clear();
    DescriptionOfTheDietController.clear();
    ComponentsOfTheDietController.clear();
    BeginningOfTheDietTimeController.clear();
    DietTimeIsOverController.clear();

    update();
  }

  void onDietChanged(String? val) {
    selectedDiet = val!;
    update();
  }

  void onMealRatingChanged(String? val) {
    selectedMealRating = val!;
    update();
  }
}


