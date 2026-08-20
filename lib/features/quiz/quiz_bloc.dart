import 'package:bloc/bloc.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_data.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_event.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_state.dart';

class QuizBlock extends Bloc<QuizEvent,QuizState>{
  QuizBlock(String selectedSkill): super(QuizState(selectedSkill: selectedSkill)) {
    on<SelectOption>((event, emit) {
      emit(
          QuizState(
              currentQuestion: state.currentQuestion,
              marks: state.marks,
              selectedIndex: event.index,
              selectedSkill: state.selectedSkill,
              isEndQuiz: state.isEndQuiz
          )
      );
    });

    on<NextQuestion>((event, emit) {
      final int newMarks, newQuestion;
      final int? newIndex;
      final bool newIsQuizEnd;

      if (state.selectedIndex == null || state.isEndQuiz == true) {
        return;
      }
      if (quizzes[state.selectedSkill][state.currentQuestion]['answer'] ==
          quizzes[state.selectedSkill][state.currentQuestion]['options'][state
              .selectedIndex]) {
        newMarks = state.marks + 2;
      }
      else {
        newMarks = state.marks - 2;
      }

      if (state.currentQuestion < quizzes[state.selectedSkill].length - 1) {
        newQuestion = state.currentQuestion + 1;
        newIndex = null;
        newIsQuizEnd = false;
      }
      else {
        newQuestion = state.currentQuestion;
        newIndex = null;
        newIsQuizEnd = true;
      }

      emit(
          QuizState(
              selectedSkill: state.selectedSkill,
              selectedIndex: newIndex,
              marks: newMarks,
              currentQuestion: newQuestion,
              isEndQuiz: newIsQuizEnd
          )
      );
    }
    );
  }
}