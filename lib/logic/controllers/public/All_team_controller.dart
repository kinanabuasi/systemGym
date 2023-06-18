// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../../data/remote/Team_remote.dart';
import '../../../model/team_model.dart';

class AllTeamController extends GetxController {
  final TeamRemoteDataSource teamRemoteDataSource = TeamRemoteDataSource();
  List<TeamModel> allTeam = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllTeam();
    super.onInit();
  }

  void getAllTeam() async {
    final data = await teamRemoteDataSource.allTeam();
    data.fold((l) => null, (r) => allTeam = r);
    isLoading.value = false;
  }
}
