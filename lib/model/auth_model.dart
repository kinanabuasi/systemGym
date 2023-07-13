import 'package:systemgym/model/user_model.dart';

class AuthModel {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  UserModel? user;

  AuthModel({this.accessToken, this.tokenType, this.expiresIn, this.user});

  AuthModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    user = json['user'] != null ? UserModel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    data['expires_in'] = expiresIn;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
