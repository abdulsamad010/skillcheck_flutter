import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/core/widgets/custom_app_Bar.dart';
import 'package:skillcheck_flutter/features/home/home_screen.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_bloc.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_event.dart';

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
    return BlocProvider(
      create: (context)=> PersonalBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: CustomAppBar(name: "Personal Information"),

            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [

                    TextFormField(
                      controller: nameController,
                      validator: validateName,
                      decoration: InputDecoration(
                        label: Text("Enter Name")
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),

                    TextFormField(
                      controller: educationController,
                      validator: validateEducation,
                      decoration: InputDecoration(
                          label: Text("Enter Education")
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),

                    TextFormField(
                      controller: professionController,
                      validator: validateProfession,
                      decoration: InputDecoration(
                          label: Text("Enter Profession")
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),

                    ElevatedButton(onPressed: (){
                      if(formKey.currentState!.validate()){
                        context.read<PersonalBloc>().add(StorePersonalInfo(professionController.text, educationController.text, nameController.text));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      }
                    }, child: Text("Submit & Continue")),

                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
