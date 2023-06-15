import 'package:get/get.dart';

import '../../../data/remote/accounting_remote.dart';

class AccountingSystemController extends GetxController {
  final AccountingRemoteDataSource _accountingRemoteDataSource = AccountingRemoteDataSource();
  RxBool isLoading = false.obs;

  List<String> items = ['Option 1', 'Option 2', 'Option 3'];
  String? productType;
  List<String> items2 = ['Option 1', 'Option 2', 'Option 3'];
  String? productType2;

  Map<String, dynamic> initData() {
    return {"number": "22", "coach_id": "1", "player_id": "1", "subtype_id": "1", "discounts": "sdsdddrrrrrr", "draws": "1ww", "Payment_trainee_id": "1"};
  }

  addTournamentData() async {
    isLoading.value = true;
    Map<String, dynamic> tournamentData = initData();
    final data = await _accountingRemoteDataSource.addAccounting(tournamentData);
    data.fold((l) => null, (r) => null);
    isLoading.value = false;
  }
}
