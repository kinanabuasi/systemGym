import 'name_model.dart';

class EmployeeModel {
  int? id;
  NameModel? name;
  String? email;
  String? password;
  String? dateOfBirth;
  String? description;
  String? fullDescription;
  int? sectionId;
  int? number;
  int? empId;
  String? createdAt;
  String? updatedAt;

  EmployeeModel(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.dateOfBirth,
      this.description,
      this.fullDescription,
      this.sectionId,
      this.number,
      this.empId,
      this.createdAt,
      this.updatedAt});

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    email = json['email'];
    password = json['password'];
    dateOfBirth = json['date_of_birth'];
    description = json['description'];
    fullDescription = json['full_description'];
    sectionId = json['section_id'];
    number = json['number'];
    empId = json['emp_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['email'] = email;
    data['password'] = password;
    data['date_of_birth'] = dateOfBirth;
    data['description'] = description;
    data['full_description'] = fullDescription;
    data['section_id'] = sectionId;
    data['number'] = number;
    data['emp_id'] = empId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
