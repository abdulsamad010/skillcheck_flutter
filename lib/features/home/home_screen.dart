import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillcheck_flutter/features/profile/profile_screen.dart';

import '../../core/widgets/custom_app_Bar.dart';
import '../skill_category/skill_category.dart';
import 'home_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: CustomAppBar(name: "Home"),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,12,8,8),
        child: Column(
          children: [
            Flexible(child: Center(child: Text("Hello, there! Test your knowledge. Challenge yourself. Keep improving.",style: TextStyle(color:colors.primary),))),
            
            Text('Skills Catalog'),

            Text("Select One Of The Skill To Test?"),
            
            Expanded(
              child: ListView.builder(itemCount:skillList.length,
                  itemBuilder: (context,index){
                return ClipRRect(
                  child:Container(
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SkillCategory(index1:index,skillList: skillList,)));
                        },
                        child: Text("${skillList[index]}")),
                  )
                );
              }),
            )


          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile")
      ],
      onTap: (index){
        if(index==1){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
        }
      },
      ),

    );
  }
}
