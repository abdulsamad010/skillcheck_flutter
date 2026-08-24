import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/home/home_screen.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_bloc.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_event.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_state.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() => _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {

  final nameController=TextEditingController();
  final educationController=TextEditingController();
  final professionController=TextEditingController();

  final formKey=GlobalKey<FormState>();

  String? validateName(String? name) {
    if (name == null || name.trim().length < 3) return "Invalid name";
    return null;
  }

  String? validateEducation(String? education) {
    if (education == null || education.trim().length < 3) return "Invalid education";
    return null;
  }

  String? validateProfession(String? profession) {
    if (profession == null || profession.trim().length < 3) return "Invalid profession";
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return BlocProvider(
      create: (context)=> PersonalBloc()..add(InitializePersonalBloc()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: CustomAppBar(name: "Personal Information"),

            body: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(

                      height: width*0.3,width: width*0.3,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(200)
                        ),
                        child: Icon(Icons.pending_actions,color: Colors.white,size: width*0.2,)),

                      SizedBox(height: height*0.05,),

                      Text("Tell us about yourself",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),

                      SizedBox(height: height*0.01,),

                      Text("Please provide your basic information to personalize your experience",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold,)),

                      SizedBox(height: height*0.05,),

                      TextFormField(
                        controller: nameController,
                        validator: validateName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide(
                            color: Colors.deepPurple,

                          )),
                          prefixIcon:  Icon(Icons.person,color: Colors.deepPurple,),
                          label: Text("Enter Name")
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),

                      SizedBox(height: height*0.05,),

                      TextFormField(
                        controller: educationController,
                        validator: validateEducation,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(
                              color: Colors.deepPurple,

                            )),
                            prefixIcon:  Icon(Icons.leaderboard_rounded,color: Colors.deepPurple,),
                            label: Text("Enter Your Education")
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),

                      SizedBox(height: height*0.05,),

                      TextFormField(
                        controller: professionController,
                        validator: validateProfession,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide(
                              color: Colors.deepPurple,

                            )),
                            prefixIcon:  Icon(Icons.work_history,color: Colors.deepPurple,),
                            label: Text("Enter your profession")
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),

                      SizedBox(height: height*0.05,),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple
                          ),
                          onPressed: (){
                        if(formKey.currentState!.validate()){
                          context.read<PersonalBloc>().add(StorePersonalInfo(professionController.text, educationController.text, nameController.text));
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        }
                      }, child: Text("Submit & Continue",style: TextStyle(color: Colors.white),)),

                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
