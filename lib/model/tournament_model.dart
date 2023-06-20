import 'name_model.dart';

class TournamentModel {
  int? id;
  NameModel? name;
  String? number;
  String? description;
  String? startTime;
  String? endTime;
  int? tournamentTypeId;
  int? prizeTypeId;
  int? championshipLevelsId;
  String? createdAt;
  String? updatedAt;

  TournamentModel(
      {this.id,
      this.name,
      this.number,
      this.description,
      this.startTime,
      this.endTime,
      this.tournamentTypeId,
      this.prizeTypeId,
      this.championshipLevelsId,
      this.createdAt,
      this.updatedAt});

  TournamentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    number = json['number'];
    description = json['description'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    tournamentTypeId = json['tournament_type_id'];
    prizeTypeId = json['prize_type_id'];
    championshipLevelsId = json['championship_levels_id'];
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
    data['description'] = description;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    data['tournament_type_id'] = tournamentTypeId;
    data['prize_type_id'] = prizeTypeId;
    data['championship_levels_id'] = championshipLevelsId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
