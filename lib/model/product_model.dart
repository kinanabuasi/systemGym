import 'package:systemgym/model/name_model.dart';

class ProductModel {
  int? id;
  int? clubId;
  NameModel? name;
  int? productTypesId;
  String? description;
  int? price;
  String? createdAt;
  String? updatedAt;

  ProductModel({this.id, this.clubId, this.name, this.productTypesId, this.description, this.price, this.createdAt, this.updatedAt});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubId = json['club_id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    productTypesId = json['product_types_id'];
    description = json['description'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['club_id'] = clubId;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['product_types_id'] = productTypesId;
    data['description'] = description;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
