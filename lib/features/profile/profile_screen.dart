import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/profile/profile_block.dart';
import 'package:skillcheck_flutter/features/profile/profile_event.dart';
import 'package:skillcheck_flutter/features/profile/profile_state.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>ProfileBlock()..add(InitializeProfile()),child: Scaffold(

      appBar: CustomAppBar(name: "Your Profile"),

      body: BlocBuilder<ProfileBlock,ProfileState>(builder: (context,state){
        return Column(
          children: [
            state.name!=null ?
            Text("Name: ${state.name}")
            : SizedBox(),
        state.education!=null ?
            Text("Education: ${state.education}")
            : SizedBox(),
        state.profession!=null ?
            Text("Professtion: ${state.profession}")
            : SizedBox(),

            Text("Quizzes Results"),


            state.quiz!=null ?
            Expanded(
              child: ListView.builder(
                  itemCount: state.quiz!.length,
                  itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(8),
                      child:Column(

                        children: [

                          Text("Quiz No : ${state.quiz![index]["QUIZ_NO"]}"),

                          SizedBox(height: 4,),

                          Text("Skill Name : ${state.quiz![index]["SKILL_NAME"]}"),
                          SizedBox(height: 4,),

                          Text("Category Name : ${state.quiz![index]["CATEGORY_NAME"]}"),
                          SizedBox(height: 4,),

                          Text("Marks Obtained: ${state.quiz![index]["Marks"]}"),
                          SizedBox(height: 4,),

                          Text("Result: ${state.quiz![index]["IS_PASS"]==1 ? "Pass":"Fail"}"),
                        ],

                      ),
                    );
                  }),
            )

                : Text("You Cant Finished Any Quiz Yet")
                      ],
        );}
      )


    ));
  }
}
