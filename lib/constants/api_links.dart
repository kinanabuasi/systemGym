// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

class ApiEndPoints {
  static const String baseUrl = 'https://systemgym.space/api/v1/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String login_admin = 'login/admin';
  final String user_profile_admin = 'userProfile/admin';
  final String logout_admin = 'logout/admin';
  final String register_admin = 'refresh/admin';
  final String password_reset = 'password/reset';
  final String forget_password = 'password/emai';
}
