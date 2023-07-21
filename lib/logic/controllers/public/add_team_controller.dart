import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/player_remote.dart';
import 'package:systemgym/data/remote/team_remote.dart';
import 'package:systemgym/model/coach_model.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../model/player_model.dart';
import '../../../services/snackbar.dart';

//
class AddTeamController extends GetxController {
  final TeamRemoteDataSource _teamRemoteDataSource = TeamRemoteDataSource();
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();
  final PlayerRemoteDataSource _playerRemoteDataSource = PlayerRemoteDataSource();

  final RxBool isLoading = false.obs;
  TextEditingController numberController = TextEditingController();
  TextEditingController nameENController = TextEditingController();
  TextEditingController nameARController = TextEditingController();
  TextEditingController teamDescriptionController = TextEditingController();
  String? imagePath;
  List<CoachModel> selectedCoaceshModel = [];
  List<PlayerModel> selectedPlayersModel = [];

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

  addTraningSection() async {
    isLoading.value = true;
    dio.FormData traningdData = intiData();
    final data = await _teamRemoteDataSource.addTeam(traningdData);
    isLoading.value = false;
    data.fold((l) => null, (r) {
      SnackbarUtil.showSuccess(message: 'Good job, New Team is added successfully');
    });
  }

  dio.FormData intiData() {
    dio.FormData form = dio.FormData.fromMap({
      'name_ar': nameARController.text.trim(),
      'name_en': nameENController.text.trim(),
      'description': teamDescriptionController.text.trim(),
      'number': numberController.text.trim(),
      'image_path': imagePath,
    });
    for (var i in selectedCoaceshModel) {
      form.fields.add(MapEntry('coach_id[]', i.id.toString()));
    }
    for (var i in selectedPlayersModel) {
      form.fields.add(MapEntry('player_id[]', i.id.toString()));
    }
    return form;
  }
}
