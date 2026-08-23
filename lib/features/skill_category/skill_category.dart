import 'package:flutter/material.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_bloc.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_event.dart';
import 'package:skillcheck_flutter/features/skill_category/skill_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../quiz/quiz_screen.dart';

class SkillCategory extends StatelessWidget {
  int index1;
  List<String> skillList;
  SkillCategory({super.key,required this.index1,required this.skillList});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(name: "${skillList[index1]}"),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,16,8,8),
        child: Column(
          children: [

            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Colors.black,blurRadius: 8)
                    ]
                ),
                padding: EdgeInsets.all(16),
                child: Text("Which Sub-Skill You Want To Test For ${skillList[index1]}?",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15))),

            SizedBox(height: height*0.03,),

            ListView.builder(itemCount:skillCategories[skillList[index1]]!.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(3),
                        child: InkWell(
                            borderRadius: BorderRadius.circular(3),

                            splashColor: Colors.orangeAccent,
                            onTap: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(

                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      Text("Instructions For Quiz", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                      Text('''
                                  \n1) Each question has one correct answer.
2) Select the option you believe is correct.
3) Correct answer: +2 marks
4) Wrong answer: −2 marks
5) You must select an option before moving to the next question.
6) Answer each question carefully before proceeding.
7) Your final score will be calculated after completing all questions.
8) Your result will be saved after the quiz is completed.
                                  '''),
                                    ],
                                  ),

actionsAlignment: MainAxisAlignment.spaceBetween,                                actions: [

                                   ElevatedButton(
                                       style: ElevatedButton.styleFrom(
                                           backgroundColor: Colors.orangeAccent
                                       ),
                                       onPressed: (){
                                         Navigator.pop(context);
                                       }, child: Text("Cancel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                                   ElevatedButton(
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: Colors.deepPurple
                                       ),
                                       onPressed: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>BlocProvider(
                                         create:(context)=>QuizBloc(skillCategories[skillList[index1]]![index],skillList[index1])..add(InitializeQuiz()),
                                         child: QuizScreen())));
                                   }, child: Text("Start Quiz",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                                 ],
                                );
                              });
                            },
                            child: Container(
                              width: double.infinity,
                                padding: const EdgeInsets.all(12.0),
                                child: Text("${index+1}) ${skillCategories[skillList[index1]]![index]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
                      ),

                      SizedBox(height: height*0.01,),
                    ],
                  );
                })


          ],
        ),
      ),
      );
  }
}
