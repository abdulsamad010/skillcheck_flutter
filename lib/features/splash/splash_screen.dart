import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_information_screen.dart';

import '../../core/widgets/custom_app_Bar.dart';
import '../home/home_screen.dart';
import '../personal_information/personal_bloc.dart';
import '../personal_information/personal_event.dart';
import '../personal_information/personal_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void wait() async{
    await Future.delayed(Duration(seconds: 5));}

  @override
  void initState() {

    wait();

    super.initState();
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

                  body: BlocListener<PersonalBloc,PersonalState>(listener: (context,state){

                    if(state.name!=''){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    }else{
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PersonalInformationScreen()));

                    }

                  },
                    child: Scaffold(
                      body: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            gradient: LinearGradient(colors: [Colors.deepPurple,Colors.orangeAccent],begin: AlignmentGeometry.bottomCenter,end: AlignmentGeometry.topCenter)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Image.asset("assets/logo/app_logo.png",fit: BoxFit.contain,height: height*0.5,width:width*0.5),
                            Text("Test, Learn, Grow",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),

                            SizedBox(height: 8,),

                            CircularProgressIndicator(color: Colors.white,),


                          ],
                        ),
                      ),
                    ),
                  ));}));}}