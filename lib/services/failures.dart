import 'package:get/utils.dart';

abstract class Failures {
  final String failures = '';
}

class SomthingWrongFailures implements Failures {
  @override
  String get failures => 'Somthing Wrong'.tr;
}

class UserNotLoginFailure implements Failures {
  @override
  String get failures => 'User Not Login'.tr;
}
