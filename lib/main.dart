import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:nasa_space_app/levelsPages/levelOne/levelOne.dart';
import 'package:nasa_space_app/levelsPages/levelOne/preparation.dart';
import 'package:nasa_space_app/questions/quiz_screen.dart';
import 'package:nasa_space_app/splash_screen/splashScreen.dart';
import 'package:nasa_space_app/video.dart';

import 'levelsPages/levelOne/take_off.dart';
import 'loginScreen/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var Primarycolor=HexColor('9CCDDC');
    var classiccolor=HexColor('CED7E0');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        canvasColor: Colors.white,
primaryColor: Primarycolor,
        scaffoldBackgroundColor: HexColor('CED7E0'),

        appBarTheme: AppBarTheme(

          iconTheme: IconThemeData(
              color: Colors.white,size: 35
          ),
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: classiccolor,
              statusBarIconBrightness: Brightness.dark
          ),
          titleSpacing: 20,
          color: HexColor('CED7E0'),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 20,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.purple.shade300,
            selectedItemColor: Colors.purple.shade900,
            backgroundColor: Colors.purple.shade50
        ),
        textTheme: TextTheme(
            bodyText1: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
            )
        ),


      ),


      home: SplashScreen(),
    ); ;
  }
}
