class ChampoinesShipModel {
  int? id;
  int? clubId;
  String? championshipId;
  int? tournamentId;
  int? playerId;
  String? playerScore;
  String? performanceEvolution;
  String? playerNotes;
  String? createdAt;
  String? updatedAt;

  ChampoinesShipModel(
      {this.id, this.clubId, this.championshipId, this.tournamentId, this.playerId, this.playerScore, this.performanceEvolution, this.playerNotes, this.createdAt, this.updatedAt});

  ChampoinesShipModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clubId = json['club_id'];
    championshipId = json['championship_id'];
    tournamentId = json['tournament_id'];
    playerId = json['player_id'];
    playerScore = json['player_score'];
    performanceEvolution = json['performance_evolution'];
    playerNotes = json['player_notes'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['club_id'] = clubId;
    data['championship_id'] = championshipId;
    data['tournament_id'] = tournamentId;
    data['player_id'] = playerId;
    data['player_score'] = playerScore;
    data['performance_evolution'] = performanceEvolution;
    data['player_notes'] = playerNotes;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
