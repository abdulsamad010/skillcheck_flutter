import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_bloc.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_end_screen.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_event.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_state.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List<Color> optionColor=[Colors.grey,Colors.grey,Colors.grey,Colors.grey];

  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;

    return BlocListener<QuizBloc, QuizState>(
        listener: (context, state) {
          if (state.isEndQuiz && state.isPass == null) {
            context.read<QuizBloc>().add(StoreResults());
          }

          if (state.isPass != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: context.read<QuizBloc>(),
                  child: QuizEndScreen(),
                ),
              ),
            );
          }
        },

    child:  Scaffold(
      appBar:AppBar(leading: Icon(Icons.question_mark,color: Colors.orangeAccent,),title: Text("Quiz For ${context.read<QuizBloc>().state.selectedSkill}",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),),
      body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height:height*0.03),

                Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.black,blurRadius: 8)
                    ]
                ),
                padding: EdgeInsets.all(height*0.02),
                child:Text(
                  "Be careful! A correct answer gives you 2 marks, "
                      "while a wrong answer deducts 2 marks.",
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),),

                  SizedBox(height:height*0.05),

                  BlocBuilder<QuizBloc, QuizState>(
                    builder: (context, state) {
                      return Text(
                        "Question No ${state.currentQuestion + 1}: "
                            "${state.question}",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                      );
                    },
                  ),

                  SizedBox(height:height*0.03),

                  BlocBuilder<QuizBloc, QuizState>(
                    builder: (context, state) {
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.4,
                          crossAxisCount: 2,
                        ),
                        itemCount: state.options.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: optionColor[index],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Material(
                              color: optionColor[index],
                              child: InkWell(
                                splashColor: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(25),
                                onTap: () {

                                  optionColor=[Colors.grey,Colors.grey,Colors.grey,Colors.grey,];
                                  optionColor[index]=Colors.orangeAccent;

                                  context
                                      .read<QuizBloc>()
                                      .add(SelectOption(index));
                                },
                                child: Column(
                                  children: [
                                    Text("Option ${index + 1}", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),

                                    Expanded(child: Text("${state.options[index]}", style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),

                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),

                  SizedBox(height:height*0.05),

              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple
                    ),
                    onPressed: (){
                      optionColor=[Colors.grey,Colors.grey,Colors.grey,Colors.grey];

                      context.read<QuizBloc>().add(NextQuestion());




                           }, child:  Text("Next Question",style: TextStyle(color: Colors.white),),
                )),

                  Align(
                  alignment: AlignmentGeometry.bottomRight,
                  child: Text("Total Questions: 10",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),))


                ],
              ),
            ),
        ),
      ));}
}