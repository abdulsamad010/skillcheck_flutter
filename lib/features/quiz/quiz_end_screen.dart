import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (context)=>QuizBloc("", ""),
      child: Scaffold(
          body: BlocBuilder<QuizBloc,QuizState>(
            builder:(context,state)=> Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2)
                ],
                border:Border.all(color: Colors.deepPurple,width: 1)
              ),
              child: Center(
                child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Quiz Results",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                Icon(Icons.adf_scanner_rounded,color: Colors.orangeAccent,)
                              ],
                            ),

                            SizedBox(height: 8,),

                            Text("Obtained Marks: ${state.marks}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 8,),
                            Text("Total Marks: 20",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 8,),
                            Text("Pass or Fail: ${state.isPass}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),

                          ],
                        ),
              ),
            ),
          ),

      ),
    );
  }
}

