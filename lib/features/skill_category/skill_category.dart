import 'package:flutter/material.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/skill_category/skill_data.dart';

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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizScreen(name:skillCategories[skillList[index1]]![index])));
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
