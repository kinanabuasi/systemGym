import 'name_model.dart';

class TraningModel {
  int? id;
  int? clubId;
  NameModel? name;
  String? number;
  String? description;
  int? trainingGroupId;
  String? linkWebsite;
  String? durationOfTraining;
  String? trainingNumber;
  String? imagePath;
  String? numberOfIterations;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  TraningModel(
      {this.id,
      this.clubId,
      this.name,
      this.number,
      this.description,
      this.trainingGroupId,
      this.linkWebsite,
      this.durationOfTraining,
      this.trainingNumber,
      this.imagePath,
      this.numberOfIterations,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  TraningModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubId = json['club_id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    number = json['number'];
    description = json['description'];
    trainingGroupId = json['training_group_id'];
    linkWebsite = json['link_website'];
    durationOfTraining = json['duration_of_training'];
    trainingNumber = json['training_number'];
    imagePath = json['image_path'];
    numberOfIterations = json['number_of_iterations'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['club_id'] = clubId;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['number'] = number;
    data['description'] = description;
    data['training_group_id'] = trainingGroupId;
    data['link_website'] = linkWebsite;
    data['duration_of_training'] = durationOfTraining;
    data['training_number'] = trainingNumber;
    data['image_path'] = imagePath;
    data['number_of_iterations'] = numberOfIterations;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    return data;
  }
}
