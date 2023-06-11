// ignore_for_file: library_private_types_in_public_api

class ApiEndPoints {
  static const String baseUrl = 'http://127.0.0.1:8000/api/v1/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String register = 'register';
  final String login = 'login';
}
