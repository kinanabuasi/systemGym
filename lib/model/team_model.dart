import 'name_model.dart';

class TeamModel {
  int? id;
  NameModel? name;
  String? number;
  String? description;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  TeamModel({this.id, this.name, this.number, this.description, this.imagePath, this.createdAt, this.updatedAt});

  TeamModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    number = json['number'];
    description = json['description'];
    imagePath = json['image_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['number'] = number;
    data['description'] = description;
    data['image_path'] = imagePath;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
