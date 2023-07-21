import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/remote/accounting_remote.dart';
import '../../../data/remote/coash_remote.dart';
import '../../../data/remote/player_remote.dart';
import '../../../data/remote/seeders_remote.dart';
import '../../../model/coach_model.dart';
import '../../../model/player_model.dart';
import '../../../model/seeders_level_model.dart';

class AccountingSystemController extends GetxController {
  final AccountingRemoteDataSource _accountingRemoteDataSource = AccountingRemoteDataSource();
  final SeedersRemote _seedersRemote = SeedersRemote();
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();
  final PlayerRemoteDataSource _playerRemoteDataSource = PlayerRemoteDataSource();
  RxBool isLoading = false.obs;

  TextEditingController discountsController = TextEditingController();
  TextEditingController drawsController = TextEditingController();
  TextEditingController taxController = TextEditingController();
  TextEditingController paymentForTrainerController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  String? imagePath;
  late SeedersIdModel subeTypeId;
  late CoachModel selectedCoaceshModel;
  late PlayerModel selectedPlayersModel;

  initImagePath(String path) {
    imagePath = path;
  }

  Future<List<SeedersIdModel>>? allprofessionalDegree() async {
    List<SeedersIdModel> seeders = [];
    final data = await _seedersRemote.allProf();
    data.fold((l) => null, (r) => seeders = r);
    return seeders;
  }

  selectSubTypeId(SeedersIdModel subtype) {
    subeTypeId = subtype;
  }

  Future<List<CoachModel>> getAllCoches() async {
    List<CoachModel> coaches = [];
    final data = await _coachRemoteDataSource.allCoach();
    data.fold((l) => null, (r) => coaches = r);
    return coaches;
  }

  selectCoashes(CoachModel coashesModel) {
    selectedCoaceshModel = coashesModel;
  }

  Future<List<PlayerModel>> getAllPlayers() async {
    List<PlayerModel> players = [];
    final data = await _playerRemoteDataSource.allPlayer();
    data.fold((l) => null, (r) => players = r);
    return players;
  }

  selectPlayers(PlayerModel playersModel) {
    selectedPlayersModel = playersModel;
  }

  Map<String, dynamic> initData() {
    return {
      'draws': drawsController.text.trim(),
      'discounts': discountsController.text.trim(),
      'tax': taxController.text.trim(),
      'Payment_for_trainee': paymentForTrainerController.text.trim(),
      'number': numberController.text.trim(),
      'coach_id': selectedCoaceshModel.id,
      'player_id': selectedPlayersModel.id,
      'subtype_id': subeTypeId.id.toString()
    };
  }

  addTournamentData() async {
    isLoading.value = true;
    Map<String, dynamic> tournamentData = initData();
    final data = await _accountingRemoteDataSource.addAccounting(tournamentData);
    data.fold((l) => null, (r) => null);
    isLoading.value = false;
  }
}
