import 'name_model.dart';

class PlayerModel {
  int? id;
  NameModel? name;
  String? userName;
  String? email;
  String? subscriptionNumber;
  String? dateOfBirth;
  String? phone;
  String? imagePath;
  String? playerDescription;
  String? linkWebsite;
  String? linkFacebook;
  String? linkInstagram;
  String? linkTwitter;
  String? linkYoutupe;
  int? profsId;
  int? subtypeId;
  int? gendersId;
  int? nationalityId;
  int? locationId;
  int? subLocationId;
  String? postalCode;
  String? weight;
  String? height;
  String? salaryMonth;
  String? total;
  int? coachsId;
  String? createdAt;
  String? updatedAt;

  PlayerModel(
      {this.id,
      this.name,
      this.userName,
      this.email,
      this.subscriptionNumber,
      this.dateOfBirth,
      this.phone,
      this.imagePath,
      this.playerDescription,
      this.linkWebsite,
      this.linkFacebook,
      this.linkInstagram,
      this.linkTwitter,
      this.linkYoutupe,
      this.profsId,
      this.subtypeId,
      this.gendersId,
      this.nationalityId,
      this.locationId,
      this.subLocationId,
      this.postalCode,
      this.weight,
      this.height,
      this.salaryMonth,
      this.total,
      this.coachsId,
      this.createdAt,
      this.updatedAt});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    userName = json['user_name'];
    email = json['email'];
    subscriptionNumber = json['subscription_number'];
    dateOfBirth = json['date_of_birth'];
    phone = json['phone'];
    imagePath = json['image_path'];
    playerDescription = json['player_description'];
    linkWebsite = json['link_website'];
    linkFacebook = json['link_facebook'];
    linkInstagram = json['link_instagram'];
    linkTwitter = json['link_twitter'];
    linkYoutupe = json['link_youtupe'];
    profsId = json['profs_id'];
    subtypeId = json['subtype_id'];
    gendersId = json['genders_id'];
    nationalityId = json['nationality_id'];
    locationId = json['location_id'];
    subLocationId = json['sub_location_id'];
    postalCode = json['postal_code'];
    weight = json['weight'];
    height = json['height'];
    salaryMonth = json['salary_month'];
    total = json['total'];
    coachsId = json['coachs_id'];
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
    data['email'] = email;
    data['subscription_number'] = subscriptionNumber;
    data['date_of_birth'] = dateOfBirth;
    data['phone'] = phone;
    data['image_path'] = imagePath;
    data['player_description'] = playerDescription;
    data['link_website'] = linkWebsite;
    data['link_facebook'] = linkFacebook;
    data['link_instagram'] = linkInstagram;
    data['link_twitter'] = linkTwitter;
    data['link_youtupe'] = linkYoutupe;
    data['profs_id'] = profsId;
    data['subtype_id'] = subtypeId;
    data['genders_id'] = gendersId;
    data['nationality_id'] = nationalityId;
    data['location_id'] = locationId;
    data['sub_location_id'] = subLocationId;
    data['postal_code'] = postalCode;
    data['weight'] = weight;
    data['height'] = height;
    data['salary_month'] = salaryMonth;
    data['total'] = total;
    data['coachs_id'] = coachsId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
