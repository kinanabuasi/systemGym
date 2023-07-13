import 'package:systemgym/model/name_model.dart';

class StatusModel {
  int? id;
  NameModel? name;

  StatusModel({this.id, this.name});

  StatusModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    return data;
  }
}

List<StatusModel> statusList = [
  StatusModel(id: 0, name: NameModel(en: 'Active', ar: 'نشط')),
  StatusModel(id: 1, name: NameModel(en: 'In Active', ar: '--')),
];
