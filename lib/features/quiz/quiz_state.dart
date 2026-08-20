class QuizState {
  final int marks,currentQuestion;
  final int? selectedIndex;
  final String selectedSkill;
  final bool isEndQuiz;
  QuizState({this.marks=0,this.currentQuestion=0,this.selectedIndex,required this.selectedSkill,this.isEndQuiz=false});
}