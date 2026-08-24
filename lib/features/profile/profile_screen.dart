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
        return Container(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.purpleAccent,
                            blurRadius: 2)
                      ],
                      border:Border.all(color: Colors.purpleAccent,width: 1)
                  ),child: Row(
                    children: [
                      Expanded(child: Text("Personal Information",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                      Icon(Icons.person,color: Colors.orangeAccent,)
                    ],
                  )),

              state.name!=null ?
              Text("Name: ${state.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
              : SizedBox(),
          state.education!=null ?
              Text("Education: ${state.education}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
              : SizedBox(),
          state.profession!=null ?
              Text("Professtion: ${state.profession}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
              : SizedBox(),

              Container(padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.purpleAccent,
                            blurRadius: 2)
                      ],
                      border:Border.all(color: Colors.purpleAccent,width: 1)
                  ),child: Row(
                    children: [
                      Expanded(child: Text("Quizzes Results",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                      Icon(Icons.text_snippet_rounded,color: Colors.orangeAccent,)
                    ],
                  )),

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

                            Text("Quiz No : ${state.quiz![index]["QUIZ_NO"]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),

                            SizedBox(height: 4,),

                            Text("Skill Name : ${state.quiz![index]["SKILL_NAME"]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 4,),

                            Text("Category Name : ${state.quiz![index]["CATEGORY_NAME"]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 4,),

                            Text("Marks Obtained: ${state.quiz![index]["MARKS"]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            SizedBox(height: 4,),

                            Text("Result: ${state.quiz![index]["IS_PASS"]==1 ? "Pass":"Fail"}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                          ],

                        ),
                      );
                    }),
              )

                  : Text("You Cant Finished Any Quiz Yet",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)
                        ],
          ),
        );}
      )


    ));
  }
}
