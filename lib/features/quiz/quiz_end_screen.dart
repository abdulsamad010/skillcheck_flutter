import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/features/home/home_screen.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_bloc.dart';
import 'package:skillcheck_flutter/features/quiz/quiz_state.dart';

class QuizEndScreen extends StatefulWidget {
  const QuizEndScreen({super.key});

  @override
  State<QuizEndScreen> createState() => _QuizEndScreenState();
}

class _QuizEndScreenState extends State<QuizEndScreen> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: BlocBuilder<QuizBloc,QuizState>(
            builder:(context,state)=> Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 2)
                ],
                border:Border.all(color: Colors.deepPurple,width: 1)
              ),
              child: Center(
                child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                              padding: EdgeInsets.all(height*0.02),
                              child:Text(
                                "Quiz Finished",
                                style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
          
                            SizedBox(height:height*0.05),
          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Quiz Results",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                                Icon(Icons.sports_score,color: Colors.orangeAccent,size: height*0.1,),
                              ],
                            ),
          
                            Divider(color: Colors.deepPurple,thickness: 4,),
          
                            SizedBox(height: 8,),
          
                            Text("Obtained Marks: ${state.marks}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 8,),
                            Text("Total Marks: 20",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 8,),
                            Text("Result: ${state.isPass==1 ? "Pass":"Fail"}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
          
                            Divider(color: Colors.deepPurple,thickness: 4,),
          
          
                            SizedBox(height:height*0.03),
          
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple
                              ),
                              onPressed: (){
          
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()),(route) => false,);
          
                              }, child:  Text("Go To Home",style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
              ),
            ),
          ),
        ),

    );
  }
}

