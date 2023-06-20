// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/remote/tournament_remote.dart';

class AddANewTournamentController extends GetxController {
  final TournamentRemoteDataSource _tournamentRemoteDataSource = TournamentRemoteDataSource();

  RxBool isLoading = false.obs;

  List<String> items = ['Option 1', 'Option 2', 'Option 3'];
  String? tournament_type;
  List<String> items2 = ['Option 1', 'Option 2', 'Option 3'];
  String? trainees;
  List<String> items3 = ['Option 1', 'Option 2', 'Option 3'];
  String? trainers;
  List<String> items4 = ['Option 1', 'Option 2', 'Option 3'];
  String? Award_type;
  List<String> items5 = ['Option 1', 'Option 2', 'Option 3'];
  String? Championship_level;

  final TextEditingController idController = TextEditingController();
  final TextEditingController TournamentNameController = TextEditingController();
  final TextEditingController TournamentDescriptionController = TextEditingController();
  final TextEditingController TournamentTypeController = TextEditingController();
  final TextEditingController AddTraineesController = TextEditingController();
  final TextEditingController AddtrainersController = TextEditingController();
  final TextEditingController TournamentStartDateController = TextEditingController();
  final TextEditingController TheEndOfTheTournamentController = TextEditingController();

  Map<String, dynamic> initData() {
    return {
      "name_ar": TournamentNameController.text.trim(),
      "name_en": TournamentNameController.text.trim(),
      "description": TournamentDescriptionController.text.trim(),
      "number": '',
      "start_time": "2023-06-08",
      "end_time": "2023-06-08",
      "tournament_type_id": tournament_type,
      "prize_type_id": "1",
      "championship_levels_id": "2",
      "coach_id": "1",
      "player_id": "1"
    };
  }

  addTournamentData() async {
    isLoading.value = true;
    Map<String, dynamic> tournamentData = initData();
    final data = await _tournamentRemoteDataSource.addTournament(tournamentData);
    data.fold((l) => null, (r) => null);
    isLoading.value = false;
  }
}
