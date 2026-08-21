import 'package:flutter/material.dart';
import 'features/personal_information/personal_information_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'SkillCheck',
        theme: ThemeData(
  useMaterial3: true,
  colorScheme:  ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),

      home: PersonalInformationScreen(),
    );
  }
}