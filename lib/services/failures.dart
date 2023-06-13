import 'package:get/utils.dart';

abstract class Failures {
  final String failures = '';
}

class SomthingWrongFailures implements Failures {
  @override
  String get failures => 'Somthing Wrong'.tr;
}

class UserNotLoginFailures implements Failures {
  @override
  String get failures => 'User Not Login';
}

class UserNotFoundFailures implements Failures {
  @override
  String get failures => 'User Not Found';
}

class PhoneAlreadyinUseFailures implements Failures {
  @override
  String get failures => 'Phone Already in Use';
}

class WrongPasswordFailures implements Failures {
  @override
  String get failures => 'Wrong Password';
}
