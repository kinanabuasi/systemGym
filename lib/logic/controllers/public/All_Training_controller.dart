// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllTrainingController  {
  AllTrainingController({
    this.theNameOfTheTrainingSet,
    this.trainingNumber,
    this.trainingName,
    this.trainingDescription,
    this.videoLinkFromTheSite,
    this.trainingTime,
    this.theNumberOfIterations,
  });
  final String? theNameOfTheTrainingSet;
  final String? trainingNumber;
  final String? trainingName;
  final String? trainingDescription;
  final String? videoLinkFromTheSite;
  final String? trainingTime;
  final String? theNumberOfIterations;
}