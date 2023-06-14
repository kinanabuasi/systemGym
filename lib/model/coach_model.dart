import 'name_model.dart';

class CoachModel {
  int? id;
  NameModel? name;
  String? userName;
  String? phone;
  String? email;
  String? password;
  String? salary;
  String? imagePath;
  String? subscriptionNumber;
  String? dateOfBirth;
  String? startTime;
  String? endTime;
  String? coachDescription;
  String? linkWebsite;
  String? linkFacebook;
  String? linkTwitter;
  String? linkYoutupe;
  int? profsId;
  int? employmentTypeId;
  int? locationId;
  int? subLocationId;
  int? gendersId;
  int? nationalityId;
  String? createdAt;
  String? updatedAt;

  CoachModel(
      {this.id,
      this.name,
      this.userName,
      this.phone,
      this.email,
      this.password,
      this.salary,
      this.imagePath,
      this.subscriptionNumber,
      this.dateOfBirth,
      this.startTime,
      this.endTime,
      this.coachDescription,
      this.linkWebsite,
      this.linkFacebook,
      this.linkTwitter,
      this.linkYoutupe,
      this.profsId,
      this.employmentTypeId,
      this.locationId,
      this.subLocationId,
      this.gendersId,
      this.nationalityId,
      this.createdAt,
      this.updatedAt});

  CoachModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    userName = json['user_name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    salary = json['salary'];
    imagePath = json['image_path'];
    subscriptionNumber = json['subscription_number'];
    dateOfBirth = json['date_of_birth'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    coachDescription = json['coach_description'];
    linkWebsite = json['link_website'];
    linkFacebook = json['link_facebook'];
    linkTwitter = json['link_twitter'];
    linkYoutupe = json['link_youtupe'];
    profsId = json['profs_id'];
    employmentTypeId = json['employment_type_id'];
    locationId = json['location_id'];
    subLocationId = json['sub_location_id'];
    gendersId = json['genders_id'];
    nationalityId = json['nationality_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['user_name'] = userName;
    data['phone'] = phone;
    data['email'] = email;
    data['password'] = password;
    data['salary'] = salary;
    data['image_path'] = imagePath;
    data['subscription_number'] = subscriptionNumber;
    data['date_of_birth'] = dateOfBirth;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['coach_description'] = coachDescription;
    data['link_website'] = linkWebsite;
    data['link_facebook'] = linkFacebook;
    data['link_twitter'] = linkTwitter;
    data['link_youtupe'] = linkYoutupe;
    data['profs_id'] = profsId;
    data['employment_type_id'] = employmentTypeId;
    data['location_id'] = locationId;
    data['sub_location_id'] = subLocationId;
    data['genders_id'] = gendersId;
    data['nationality_id'] = nationalityId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
