class CategoryModel {
  int? id;
  int? clubId;
  int? profId;
  String? name;
  String? description;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  CategoryModel({this.id, this.clubId, this.profId, this.name, this.description, this.imagePath, this.createdAt, this.updatedAt});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubId = json['club_id'];
    profId = json['prof_id'];
    name = json['name'];
    description = json['description'];
    imagePath = json['image_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['club_id'] = clubId;
    data['prof_id'] = profId;
    data['name'] = name;
    data['description'] = description;
    data['image_path'] = imagePath;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
