import 'package:get/get.dart';
import 'package:intl/intl.dart';

class InsightController extends GetxController {
  DateTime selectedDate = DateTime.now();
  String selectedDateString =
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  void up() {
    update();
  }
}
