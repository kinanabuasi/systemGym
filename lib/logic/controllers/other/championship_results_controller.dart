import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/player_remote.dart';

import '../../../model/Tournament_model.dart';
import '../../../model/player_model.dart';

class ChampionshipResultsController extends GetxController {
  final PlayerRemoteDataSource _playerRemoteDataSource = PlayerRemoteDataSource();

  late PlayerModel playerModel;
  late TournamentModel _tournamentModel;

  TextEditingController idCotroller = TextEditingController();
  TextEditingController playerScoreCotroller = TextEditingController();
  TextEditingController playerNotesCotroller = TextEditingController();
  TextEditingController performanceEvolutionCotroller = TextEditingController();
  TextEditingController phoneCotroller = TextEditingController();
  TextEditingController emailCotroller = TextEditingController();

  Future<List<PlayerModel>> getAllPlayer() async {
    final data = await _playerRemoteDataSource.allPlayer();
    data.fold((l) {
      return [];
    }, (r) {
      return r;
    });
    return [];
  }

  initPlayerData(PlayerModel playerModel) {
    phoneCotroller.text = playerModel.phone ?? '';
    emailCotroller.text = playerModel.email ?? '';
    playerModel = playerModel;
  }

  Map<String, dynamic> initEmployee() {
    return {
      'player_notes': playerNotesCotroller.text.trim(),
      'performance_evolution': performanceEvolutionCotroller.text.trim(),
      'player_score': playerScoreCotroller.text.trim(),
      'player_id': playerModel.id,
      'tournament_id': _tournamentModel.id,
      'championship_id': _tournamentModel.championshipLevelsId,
    };
  }

  @override
  void onInit() {
    _tournamentModel = Get.arguments;
    super.onInit();
  }
}
