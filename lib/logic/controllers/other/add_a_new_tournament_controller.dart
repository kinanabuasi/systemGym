// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/player_remote.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../data/remote/prize_remote.dart';
import '../../../data/remote/tournament_remote.dart';
import '../../../model/Prize_model.dart';
import '../../../model/coach_model.dart';
import '../../../model/player_model.dart';

class AddANewTournamentController extends GetxController {
  final TournamentRemoteDataSource _tournamentRemoteDataSource = TournamentRemoteDataSource();
  final PlayerRemoteDataSource _playerRemoteDataSource = PlayerRemoteDataSource();
  final PrizeRemoteDataSource _prizeRemoteDataSource = PrizeRemoteDataSource();
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();

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

  late PrizeModel _prizeModel;
  List<PlayerModel> _players = [];
  List<CoachModel> _choches = [];

  final TextEditingController idController = TextEditingController();
  final TextEditingController TournamentNameController = TextEditingController();
  final TextEditingController TournamentDescriptionController = TextEditingController();
  final TextEditingController TournamentNumberController = TextEditingController();
  final TextEditingController TournamentTypeController = TextEditingController();
  final TextEditingController AddTraineesController = TextEditingController();
  final TextEditingController AddtrainersController = TextEditingController();
  final TextEditingController TournamentStartDateController = TextEditingController();
  final TextEditingController TheEndOfTheTournamentController = TextEditingController();

  dio.FormData initData() {
    return dio.FormData.fromMap({
      'coach_id[]': 2,
      'player_id[]': 2,
      'championship_levels_id': 1,
      'prize_type_id': _prizeModel.id,
      'tournament_type_id': 1,
      'end_time': TournamentStartDateController.text.trim(),
      'start_time': TheEndOfTheTournamentController.text.trim(),
      'number': TournamentNumberController.text.trim(),
      'description': TournamentDescriptionController.text.trim(),
      'name_en': TournamentNameController.text.trim(),
      'name_ar': TournamentNameController.text.trim(),
    });
  }

  Future<List<PlayerModel>> getAllPlayer() async {
    List<PlayerModel> players = [];
    final data = await _playerRemoteDataSource.allPlayer();
    data.fold((l) => null, (r) => players = r);
    return players;
  }

  initPalyers(List<PlayerModel> data) {
    _players = data;
  }

  Future<List<CoachModel>> getAllCoash() async {
    List<CoachModel> coashes = [];
    final data = await _coachRemoteDataSource.allCoach();
    data.fold((l) => null, (r) => coashes = r);
    return coashes;
  }

  initCoach(List<CoachModel> data) {
    _choches = data;
  }

  Future<List<PrizeModel>> getAllPrize() async {
    List<PrizeModel> prize = [];
    final data = await _prizeRemoteDataSource.allPrize();
    data.fold((l) => null, (r) => prize = r);
    return prize;
  }

  initPrize(PrizeModel prize) {
    _prizeModel = prize;
  }

  addTournamentData() async {
    isLoading.value = true;
    dio.FormData tournamentData = initData();
    final data = await _tournamentRemoteDataSource.addTournament(tournamentData);
    data.fold((l) => null, (r) => null);
    isLoading.value = false;
  }
}
