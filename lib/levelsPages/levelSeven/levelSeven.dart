import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:nasa_space_app/cubitSeven/cubit.dart';
import 'package:nasa_space_app/cubitSeven/state.dart';



class LevelSevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context)=>LevelSevenCubit(),
      child: BlocConsumer<LevelSevenCubit,LevelSevenCubitState>(
        listener: (context,index){},
        builder: (context,index){
          var cubit=LevelSevenCubit().get(context);
          return Scaffold(
            backgroundColor: HexColor('CED7E0'),
            body: cubit.levelSevenScreens[cubit.currentIndexSeven],
            bottomNavigationBar: CurvedNavigationBar(
              onTap: (value){
cubit.changeIndex(value);
              },
              backgroundColor: HexColor('5591A9'),
              index:cubit.currentIndexSeven ,
              items: [
                Icon(Icons.tips_and_updates_sharp,size: 30,),

                Icon(Icons.note_alt_outlined,size: 30,),
                Icon(Icons.flight_takeoff_outlined,size: 30,),
              ],
            ),

          );
        },
      ),
    );
  }
}