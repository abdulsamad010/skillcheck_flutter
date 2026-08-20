abstract class QuizEvent {
}

class SelectOption extends QuizEvent{
  final int index;
  SelectOption(this.index);
}
class NextQuestion extends QuizEvent{}