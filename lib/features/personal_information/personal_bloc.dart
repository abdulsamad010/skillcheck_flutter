import 'package:bloc/bloc.dart';
import 'package:skillcheck_flutter/core/database/database_helper.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_event.dart';
import 'package:skillcheck_flutter/features/personal_information/personal_state.dart';

class PersonalBloc extends Bloc<PersonalEvent,PersonalState>{
  PersonalBloc() : super(PersonalState()){



    on<StorePersonalInfo>((event,emit) async{

      await DatabaseHelper.insertProfile(event.name, event.education, event.profession);

      final List<Map<String,dynamic>> newPersonalInfo= await DatabaseHelper.readProfile();

      if(newPersonalInfo!=[]){

      emit(
        PersonalState(name:newPersonalInfo[0]['NAME'], education:newPersonalInfo[0]["EDUCATION"], profession:newPersonalInfo[0]["PROFESSION"])
      );
    }}
    );  }

}