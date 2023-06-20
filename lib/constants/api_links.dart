// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

class ApiEndPoints {
  static const String baseUrl = 'https://systemgym.space/api/v1/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String login_player = 'login/player';
  final String login_coach = 'login/coach';
  final String register_player = 'register/coach';
  final String register_coach = 'register/coach';
  final String refresh_player = 'refresh/coach';
  final String refresh_coach = 'refresh/coach';
  final String logout_player = 'logout/coach';
  final String logout_coach = 'logout/coach';
  final String myData_player = 'coach/myData';
  final String myData_coach = 'coach/myData';
}
