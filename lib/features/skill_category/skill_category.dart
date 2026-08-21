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
    return Scaffold(
      appBar: CustomAppBar(name: "${skillList[index1]}"),
      body: Column(
        children: [
          Text("Which Sub-Skill You Want To Test For ${skillList[index1]}?"),

          Expanded(
            child: ListView.builder(itemCount:skillCategories[skillList[index1]]!.length,
                itemBuilder: (context,index){
                  return ClipRRect(
                      child:Container(
                        child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BlocProvider(
                                  create:(context)=>QuizBloc(skillCategories[skillList[index1]]![index],skillList[index1])..add(InitializeQuiz()),
                                  child: QuizScreen())));
                            },
                            child: Text("${skillCategories[skillList[index1]]![index]}")),
                      )
                  );
                }),
          )
        ],
      ),
    );
  }
}
