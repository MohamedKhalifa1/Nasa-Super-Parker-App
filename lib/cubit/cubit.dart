import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_space_app/cubit/state.dart';
import 'package:nasa_space_app/levelsPages/levelOne/mission.dart';
import 'package:nasa_space_app/levelsPages/levelOne/preparation.dart';
import 'package:nasa_space_app/levelsPages/levelOne/take_off.dart';

class  LevelOneCubit extends Cubit<LevelOneCubitState>{
  LevelOneCubit():super(initialLevelOneCubitState());
  LevelOneCubit get(context)=> BlocProvider.of(context);
  var currentIndex=0;
  void changeIndex(int index){
    currentIndex=index;
    emit(changeIndexState());
  }
  List<Widget> levelOneScreens=[
    LevelOneMission(),
    LevelOnePreparation(),
    LevelOneTakeOff()
  ];

}