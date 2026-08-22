import 'package:flutter/material.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_information_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void navigation() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PersonalInformationScreen()));
  }

  @override
  void initState() {

    navigation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
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
    );
  }
}

