class QuizState {
  final int marks,currentQuestion;
  final int? selectedIndex;
  final String selectedSkill,mainSelectedSkill;
  final bool isEndQuiz;
  final String question;
  final String answer;
  final List<String> options;
  final int? isPass;
  QuizState({this.marks=0,this.currentQuestion=0,this.selectedIndex,required this.selectedSkill,this.isEndQuiz=false,this.question='',this.answer='',this.options=const[],this.isPass,required this.mainSelectedSkill});
}