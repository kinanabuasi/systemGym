import 'name_model.dart';

class SubLocationModel {
  int? id;
  NameModel? name;
  int? locationId;
  String? createdAt;
  String? updatedAt;

  SubLocationModel({this.id, this.name, this.locationId, this.createdAt, this.updatedAt});

  SubLocationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    locationId = json['location_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['location_id'] = locationId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
