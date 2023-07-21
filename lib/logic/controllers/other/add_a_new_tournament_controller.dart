// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/player_remote.dart';
import 'package:systemgym/data/remote/seeders_remote.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../data/remote/prize_remote.dart';
import '../../../data/remote/tournament_remote.dart';
import '../../../model/Prize_model.dart';
import '../../../model/coach_model.dart';
import '../../../model/player_model.dart';
import '../../../model/seeders_level_model.dart';

class AddANewTournamentController extends GetxController {
  final TournamentRemoteDataSource _tournamentRemoteDataSource = TournamentRemoteDataSource();
  final PlayerRemoteDataSource _playerRemoteDataSource = PlayerRemoteDataSource();
  final PrizeRemoteDataSource _prizeRemoteDataSource = PrizeRemoteDataSource();
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();
  final SeedersRemote _seedersRemote = SeedersRemote();

  RxBool isLoading = false.obs;

  List<CoachModel> selectedCoaceshModel = [];
  List<PlayerModel> selectedPlayersModel = [];
  late PrizeModel _prizeModel;
  late SeedersIdModel torunmantType;
  late SeedersIdModel championesChipLevel;
  String? imagePath;

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
    dio.FormData form = dio.FormData.fromMap({
      'championship_levels_id': championesChipLevel.id,
      'prize_type_id': _prizeModel.id,
      'tournament_type_id': torunmantType.id,
      'end_time': TournamentStartDateController.text.trim(),
      'start_time': TheEndOfTheTournamentController.text.trim(),
      'number': TournamentNumberController.text.trim(),
      'description': TournamentDescriptionController.text.trim(),
      'name_en': TournamentNameController.text.trim(),
      'name_ar': TournamentNameController.text.trim(),
    });
    for (var i in selectedCoaceshModel) {
      form.fields.add(MapEntry('coach_id[]', i.id.toString()));
    }
    for (var i in selectedPlayersModel) {
      form.fields.add(MapEntry('player_id[]', i.id.toString()));
    }
    return form;
  }

  initImagePath(String path) {
    imagePath = path;
  }

  Future<List<CoachModel>> getAllCoches() async {
    List<CoachModel> coaches = [];
    final data = await _coachRemoteDataSource.allCoach();
    data.fold((l) => null, (r) => coaches = r);
    return coaches;
  }

  selectCoashes(List<CoachModel> coashesModel) {
    selectedCoaceshModel = coashesModel;
  }

  Future<List<PlayerModel>> getAllPlayers() async {
    List<PlayerModel> players = [];
    final data = await _playerRemoteDataSource.allPlayer();
    data.fold((l) => null, (r) => players = r);
    return players;
  }

  selectPlayers(List<PlayerModel> playersModel) {
    selectedPlayersModel = playersModel;
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

  Future<List<SeedersIdModel>> getAllTournmantType() async {
    List<SeedersIdModel> tournmantType = [];
    final data = await _seedersRemote.allTournmentType();
    data.fold((l) => null, (r) => tournmantType = r);
    return tournmantType;
  }

  initTournmantTypeId(SeedersIdModel seedersId) {
    torunmantType = seedersId;
  }

  Future<List<SeedersIdModel>> getallChampionesChipLevel() async {
    List<SeedersIdModel> championesChipLevel = [];
    final data = await _seedersRemote.allChampionesChipLevel();
    data.fold((l) => null, (r) => championesChipLevel = r);
    return championesChipLevel;
  }

  initChampionesChipLevel(SeedersIdModel seedersId) {
    championesChipLevel = seedersId;
  }

  addTournamentData() async {
    isLoading.value = true;
    dio.FormData tournamentData = initData();
    final data = await _tournamentRemoteDataSource.addTournament(tournamentData);
    data.fold((l) => null, (r) => null);
    isLoading.value = false;
  }
}
