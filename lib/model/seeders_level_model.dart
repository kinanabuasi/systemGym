import 'name_model.dart';

class SeedersIdModel {
  int? id;
  NameModel? name;
  String? createdAt;
  String? updatedAt;

  SeedersIdModel({this.id, this.name, this.createdAt, this.updatedAt});

  SeedersIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
