import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_bloc.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_event.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_state.dart';
import 'package:skillcheck_flutter/features/profile/profile_block.dart';
import 'package:skillcheck_flutter/features/profile/profile_screen.dart';
import 'package:skillcheck_flutter/features/profile/profile_event.dart';
import 'package:skillcheck_flutter/features/profile/profile_state.dart';

import '../../core/widgets/custom_app_Bar.dart';
import '../skill_category/skill_category.dart';
import 'home_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<IconData> icons1=[Icons.co_present,Icons.qr_code_2_rounded,Icons.security,Icons.sync_problem];

  @override
  Widget build(BuildContext context) {

    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>PersonalBloc()..add(InitializePersonalBloc())),
        BlocProvider(create: (context)=>ProfileBlock()..add(InitializeProfile())),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: CustomAppBar(name: "SkillCheck"),

            body: Padding(
              padding: const EdgeInsets.fromLTRB(8,8,8,8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                    SizedBox(height: height*0.02,),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(color: Colors.black,blurRadius: 8)
                          ]
                        ),
                        padding: EdgeInsets.all(height*0.05),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  BlocBuilder<PersonalBloc,PersonalState>(builder: (context,state)=>Text("Hello, ${state.name}!",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                
                                  Text("Test your knowledge. Challenge yourself. Keep improving.",style: TextStyle(color:Colors.white70,fontWeight: FontWeight.bold,fontSize: 15),)
                                ],
                              ),
                            ),
                            
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(child: Icon(Icons.menu_book_rounded,color: Colors.orangeAccent,size: width*0.2,))
                              ],
                            )
                          ],
                        )),
                
                    SizedBox(height: height*0.03,),

                    Text("Your Progress",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),

                    BlocBuilder<ProfileBlock,ProfileState>(
                        builder:(context,state)=>Container(
                        decoration: BoxDecoration(
                          color: Colors.grey
                            ,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        padding: EdgeInsets.all(height*0.05),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [


                            Row(
                              children: [
                                Expanded(child: Text("Quizzes Completed\n ${state.quiz != null ? state.quiz!.length : "0"}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                Text("Total Score\n ${state.quiz != null ? state.totalScorePercentage!*100 : "0"}%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: height*0.01,),
                            LinearProgressIndicator(
                              value: state.totalScore != null ? state.totalScorePercentage!.clamp(0.0, 1.0) : 0,
                              minHeight: 15,
                              backgroundColor: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(10),
                              valueColor: AlwaysStoppedAnimation(Colors.deepPurple),

                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: height*0.03,),

                    Text("Main Skills You Should Test",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                
                    ListView.builder(itemCount:skillList.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                      return Column(
                        children: [
                          Material(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(5),
                            child: InkWell(
                            borderRadius: BorderRadius.circular(5),

                                splashColor: Colors.orangeAccent,
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SkillCategory(index1:index,skillList: skillList,)));
                                },
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("${skillList[index]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),

                                Icon(icons1[index],color: Colors.orangeAccent,),
                              ],
                            )),
                          ),

                          SizedBox(height: height*0.01,),
                        ],
                      );
                    })
                
                
                  ],
                ),
              ),
            ),

            bottomNavigationBar: BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile")
            ],
            selectedItemColor: Colors.deepPurple,
            onTap: (index){
              if(index==1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              }
            },
            ),

          );
        }
      ),
    );
  }
}
