// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../../data/remote/tournament_remote.dart';
import '../../../model/Tournament_model.dart';

class AllTournamenController extends GetxController {
  final TournamentRemoteDataSource _tournamentRemoteDataSource = TournamentRemoteDataSource();
  List<TournamentModel> allTournamen = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllTournamen();
    super.onInit();
  }

  void getAllTournamen() async {
    final data = await _tournamentRemoteDataSource.allTournament();
    data.fold((l) => null, (r) => allTournamen = r);
    isLoading.value = false;
  }
}
