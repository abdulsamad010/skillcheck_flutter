import 'package:bloc/bloc.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_data.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_event.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_state.dart';

import '../../core/database/database_helper.dart';

class QuizBloc extends Bloc<QuizEvent,QuizState>{
  QuizBloc(String selectedSkill,String mainSelectedSkill): super(QuizState(selectedSkill: selectedSkill,mainSelectedSkill: mainSelectedSkill)) {


    on<InitializeQuiz>((event, emit) {
      emit(
          QuizState(
              currentQuestion: state.currentQuestion,
              mainSelectedSkill: state.mainSelectedSkill,
              marks: state.marks,
              selectedIndex: state.selectedIndex,
              selectedSkill: state.selectedSkill,
              isEndQuiz: state.isEndQuiz,
              question: quizzes[state.selectedSkill][state.currentQuestion]['question'],
            answer: quizzes[state.selectedSkill][state.currentQuestion]['answer'],
            options: quizzes[state.selectedSkill][state.currentQuestion]['options'],
          )
      );
    });

     on<SelectOption>((event, emit) {
      emit(
          QuizState(
              currentQuestion: state.currentQuestion,
              marks: state.marks,
              selectedIndex: event.index,
              selectedSkill: state.selectedSkill,
              mainSelectedSkill: state.mainSelectedSkill,
              isEndQuiz: state.isEndQuiz,
            answer: state.answer,
            question: state.question,
            options: state.options
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
            mainSelectedSkill: state.mainSelectedSkill,
              isEndQuiz: newIsQuizEnd,
            question: quizzes[state.selectedSkill][newQuestion]['question'],
            answer: quizzes[state.selectedSkill][newQuestion]['answer'],
            options: quizzes[state.selectedSkill][newQuestion]['options'],

          )
      );
    }
    );


    on<StoreResults>((event, emit) async{

      if(!state.isEndQuiz){
        return;
      }


      final int newIsPass;
        if(state.marks>=10){
          newIsPass=1;
        }
        else{
          newIsPass=0;
        }

        await DatabaseHelper.insertQuiz(state.selectedSkill, state.mainSelectedSkill, state.marks,newIsPass);


      emit(
          QuizState(
              selectedSkill: state.selectedSkill,
              isPass: newIsPass,
            mainSelectedSkill: state.mainSelectedSkill,
             marks: state.marks
          )
      );
    });

  }
}