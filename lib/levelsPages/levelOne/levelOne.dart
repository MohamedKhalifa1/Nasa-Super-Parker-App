import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:nasa_space_app/cubit/state.dart';

import '../../cubit/cubit.dart';
import '../levelOneBodies/problemscreen/problemScreenOne.dart';

class LevelOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context)=>LevelOneCubit(),
      child: BlocConsumer<LevelOneCubit,LevelOneCubitState>(
        listener: (context,index){},
        builder: (context,index){
          var cubit=LevelOneCubit().get(context);
          return Scaffold(
            backgroundColor: HexColor('CED7E0'),
            body: cubit.levelOneScreens[cubit.currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              onTap: (value){
cubit.changeIndex(value);
              },
              backgroundColor: HexColor('5591A9'),
              index:cubit.currentIndex ,
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