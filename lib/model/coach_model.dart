class CoachModel {
  int? id;
  int? clubId;
  Name? name;
  String? userName;
  String? phone;
  String? email;
  String? password;
  String? salary;
  int? coachStatus;
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
  String? linkInstagram;
  int? profsId;
  int? employmentTypeId;
  int? locationId;
  int? subLocationId;
  String? postalCode;
  int? gendersId;
  int? nationalityId;
  String? height;
  String? weight;
  Null? code;
  String? createdAt;
  String? updatedAt;

  CoachModel(
      {this.id,
      this.clubId,
      this.name,
      this.userName,
      this.phone,
      this.email,
      this.password,
      this.salary,
      this.coachStatus,
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
      this.linkInstagram,
      this.profsId,
      this.employmentTypeId,
      this.locationId,
      this.subLocationId,
      this.postalCode,
      this.gendersId,
      this.nationalityId,
      this.height,
      this.weight,
      this.code,
      this.createdAt,
      this.updatedAt});

  CoachModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubId = json['club_id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    userName = json['user_name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    salary = json['salary'];
    coachStatus = json['coach_status'];
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
    linkInstagram = json['link_Instagram'];
    profsId = json['profs_id'];
    employmentTypeId = json['employment_type_id'];
    locationId = json['location_id'];
    subLocationId = json['sub_location_id'];
    postalCode = json['postal_code'];
    gendersId = json['genders_id'];
    nationalityId = json['nationality_id'];
    height = json['height'];
    weight = json['weight'];
    code = json['code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['club_id'] = this.clubId;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['user_name'] = this.userName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['salary'] = this.salary;
    data['coach_status'] = this.coachStatus;
    data['image_path'] = this.imagePath;
    data['subscription_number'] = this.subscriptionNumber;
    data['date_of_birth'] = this.dateOfBirth;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['coach_description'] = this.coachDescription;
    data['link_website'] = this.linkWebsite;
    data['link_facebook'] = this.linkFacebook;
    data['link_twitter'] = this.linkTwitter;
    data['link_youtupe'] = this.linkYoutupe;
    data['link_Instagram'] = this.linkInstagram;
    data['profs_id'] = this.profsId;
    data['employment_type_id'] = this.employmentTypeId;
    data['location_id'] = this.locationId;
    data['sub_location_id'] = this.subLocationId;
    data['postal_code'] = this.postalCode;
    data['genders_id'] = this.gendersId;
    data['nationality_id'] = this.nationalityId;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['code'] = this.code;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Name {
  String? en;
  String? ar;

  Name({this.en, this.ar});

  Name.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['ar'] = this.ar;
    return data;
  }
}
