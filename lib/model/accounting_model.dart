class AccountingModel {
  int? id;
  String? number;
  int? coachId;
  int? playerId;
  int? paymentTraineeId;
  int? subtypeId;
  String? draws;
  String? discounts;
  String? createdAt;
  String? updatedAt;

  AccountingModel({this.id, this.number, this.coachId, this.playerId, this.paymentTraineeId, this.subtypeId, this.draws, this.discounts, this.createdAt, this.updatedAt});

  AccountingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    coachId = json['coach_id'];
    playerId = json['player_id'];
    paymentTraineeId = json['Payment_trainee_id'];
    subtypeId = json['subtype_id'];
    draws = json['draws'];
    discounts = json['discounts'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['number'] = number;
    data['coach_id'] = coachId;
    data['player_id'] = playerId;
    data['Payment_trainee_id'] = paymentTraineeId;
    data['subtype_id'] = subtypeId;
    data['draws'] = draws;
    data['discounts'] = discounts;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
