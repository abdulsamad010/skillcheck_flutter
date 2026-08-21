import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_bloc.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_data.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_event.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_state.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(name: "Quiz For ${context.read<QuizBloc>().state.selectedSkill}"),
      body:Column(
        children: [

          Text("Be Careful! Correct Answer Give You Two Marks And Wrong Answer Will Deduct Two Marks"),
          

          BlocBuilder<QuizBloc,QuizState>(builder: (context,state){
            return Text("Question No ${state.currentQuestion+1}: ${state.question}");
          }),

          Text("Options:"),

          Expanded(
            child:  BlocBuilder<QuizBloc,QuizState>(builder: (context,state){
              return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (context,index){
              return InkWell(
                  onTap: (){
                    context.read<QuizBloc>().add(SelectOption(index));
                  },
                  child: Text("Option ${index+1}: ${state.options[index]}")

                             );},);}
          ),),

          InkWell(onTap: () {
            context.read<QuizBloc>().add(NextQuestion());

            final state = context.read<QuizBloc>().state;

            if (state.isEndQuiz) {
              context.read<QuizBloc>().add(StoreResults());
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Quiz Results"),
                      Text("Obtained Marks: ${state.marks}"),
                      const Text("Total Marks: 20"),
                      Text("Pass or Fail: ${state.isPass}"),
                    ],
                  ),
                ),
              );
            }
          },child: Text("Next"),)

        ],
      )
    );
  }
}
