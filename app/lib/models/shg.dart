class SHG {
  final String name, village, district, state, shgId, leaderName;
  final DateTime registeredDate;

  SHG({
    required this.village,
    required this.name,
    required this.district,
    required this.state,
    required this.shgId,
    required this.leaderName,
    required this.registeredDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'village': this.village,
      'name': this.name,
      'district': district,
      'state': state,
      'shgId': shgId,
      'leaderName': leaderName,
    };
  }
}
