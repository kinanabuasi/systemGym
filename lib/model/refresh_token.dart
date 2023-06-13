class RefreshTokenModel {
  String? accessToken;
  int? expiresIn;

  RefreshTokenModel({this.accessToken, this.expiresIn});

  RefreshTokenModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['expires_in'] = expiresIn;
    return data;
  }
}
