import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ChampionshipResultsController extends GetxController {
  final TextEditingController idController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController performanceEvaluationController = TextEditingController();
  final TextEditingController playerNotesController = TextEditingController();

  final List<String> items = [
    'Player 1',
    'Player 2',
    'Player 3',
    // Add more player names as needed
  ];

  final List<String> items2 = [
    'Score 1',
    'Score 2',
    'Score 3',
    // Add more player scores as needed
  ];

  String? productType;
  String? productType2;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    idController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    performanceEvaluationController.dispose();
    playerNotesController.dispose();
    super.onClose();
  }

  void createNow() {
    // Implement the logic for creating the championship result
  }
}