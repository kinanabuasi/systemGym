import 'package:systemgym/model/name_model.dart';

class FoodModel {
  int? id;
  NameModel? name;
  int? foodsystemId;
  int? number;
  String? description;
  String? imagePath;
  String? startTime;
  String? endTime;
  String? createdAt;
  String? updatedAt;

  FoodModel({this.id, this.name, this.foodsystemId, this.number, this.description, this.imagePath, this.startTime, this.endTime, this.createdAt, this.updatedAt});

  FoodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    foodsystemId = json['foodsystem_id'];
    number = json['number'];
    description = json['description'];
    imagePath = json['image_path'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['foodsystem_id'] = foodsystemId;
    data['number'] = number;
    data['description'] = description;
    data['image_path'] = imagePath;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
