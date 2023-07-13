class UserModel {
  int? id;
  int? clubId;
  String? name;
  String? email;
  String? permission;
  String? code;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  UserModel({this.id, this.clubId, this.name, this.email, this.permission, this.code, this.emailVerifiedAt, this.createdAt, this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubId = json['club_id'];
    name = json['name'];
    email = json['email'];
    permission = json['permission'];
    code = json['code'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['club_id'] = clubId;
    data['name'] = name;
    data['email'] = email;
    data['permission'] = permission;
    data['code'] = code;
    data['email_verified_at'] = emailVerifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
