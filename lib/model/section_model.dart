import 'name_model.dart';

class SectionModel {
  int? id;
  NameModel? name;
  String? number;
  String? sectionDescription;
  String? departmentAddress;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  SectionModel({this.id, this.name, this.number, this.sectionDescription, this.departmentAddress, this.imagePath, this.createdAt, this.updatedAt});

  SectionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    number = json['number'];
    sectionDescription = json['section_description'];
    departmentAddress = json['department_address'];
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
    data['section_description'] = sectionDescription;
    data['department_address'] = departmentAddress;
    data['image_path'] = imagePath;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
