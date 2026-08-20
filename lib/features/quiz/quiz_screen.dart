import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_data.dart';

class QuizScreen extends StatefulWidget {
  String name;
  QuizScreen({super.key,required this.name});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  int marks=0,currentQuestion=0;
  int? selectedIndex=null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(name: "Quiz For ${widget.name}"),
      body:Column(
        children: [

          Text("Be Careful! Correct Answer Give You Two Marks And Wrong Answer Will Deduct Two Marks"),
          
          Text("Question No ${currentQuestion+1}: ${quizzes[widget.name][currentQuestion]['question']}"),

          Text("Options:"),

          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (context,index){
              return InkWell(
                  onTap: (){
                    selectedIndex=index;
                  },
                  child: Text("Option ${index+1}: ${quizzes[widget.name][currentQuestion]['options'][index]}"));
                }),
          ),

          InkWell(onTap: (){

            if(selectedIndex==null){
              return;
            }





            },
          child: Text("Next"),
          )
        ],
      )
    );
  }
}
