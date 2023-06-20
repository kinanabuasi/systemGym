import 'package:systemgym/model/name_model.dart';

class GenderModel {
  int? id;
  NameModel? name;
  String? createdAt;
  String? updatedAt;

  GenderModel({this.id, this.name, this.createdAt, this.updatedAt});

  GenderModel.fromJson(Map<String, dynamic> json) {
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

final gendreData = [
  GenderModel(id: 1, name: NameModel(en: 'Male', ar: 'ذكر')),
  GenderModel(id: 2, name: NameModel(en: 'Female', ar: 'انثي')),
];
