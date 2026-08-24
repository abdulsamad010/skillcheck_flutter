import 'package:bloc/bloc.dart';
import 'package:skillcheck_flutter/core/database/database_helper.dart';
import 'package:skillcheck_flutter/features/profile/profile_event.dart';
import 'package:skillcheck_flutter/features/profile/profile_state.dart';

class ProfileBlock extends Bloc<ProfileEvent,ProfileState>{
  ProfileBlock() : super(ProfileState()){

    on<InitializeProfile>((event,emit) async{

      final List<Map<String,dynamic>> newProfile= await DatabaseHelper.readProfile();
      final List<Map<String,dynamic>> newQuiz=await DatabaseHelper.readQuiz();

      if(newQuiz.isNotEmpty && newProfile.isNotEmpty) {

        double newTotalScore=0;
        for(int i=0; i<newQuiz.length; i++){
          newTotalScore=newTotalScore+newQuiz[i]["MARKS"];
        }

        double newTotalPercentage = newTotalScore / (newQuiz.length * 20);
        if(newTotalPercentage.isNegative){
          newTotalPercentage=0;
        }

        emit(
            ProfileState(
                name: newProfile[0]["NAME"],
                education: newProfile[0]["EDUCATION"],
                profession: newProfile[0]["PROFESSION"],
                totalScorePercentage: newTotalPercentage,
                totalScore: newTotalScore,
                quiz: newQuiz
            )
        );
      }
    });
  }
}