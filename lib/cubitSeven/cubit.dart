import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_space_app/cubit/state.dart';
import 'package:nasa_space_app/cubitSeven/state.dart';
import 'package:nasa_space_app/levelsPages/levelOne/mission.dart';
import 'package:nasa_space_app/levelsPages/levelOne/preparation.dart';
import 'package:nasa_space_app/levelsPages/levelOne/take_off.dart';
import 'package:nasa_space_app/levelsPages/levelSeven/mission.dart';

import '../levelsPages/levelSeven/preparation.dart';
import '../levelsPages/levelSeven/take_off.dart';

class  LevelSevenCubit extends Cubit<LevelSevenCubitState>{
  LevelSevenCubit():super(initialLevelSevenCubitState());
  LevelSevenCubit get(context)=> BlocProvider.of(context);
  var currentIndexSeven=0;
  void changeIndex(int index){
    currentIndexSeven=index;
    emit(changesevenIndexState());
  }
  List<Widget> levelSevenScreens=[
    LevelSevenMission(),
    LevelSevenPreparation(),
    LevelSevenTakeOff()
  ];

}