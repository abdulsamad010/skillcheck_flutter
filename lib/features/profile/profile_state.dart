class ProfileState {
  final String? name,education,profession;

  final double? totalScorePercentage;
  final double? totalScore;

  final List<Map<String,dynamic>>? quiz;

  ProfileState({this.name,this.education,this.profession,this.quiz,this.totalScorePercentage,this.totalScore});
}