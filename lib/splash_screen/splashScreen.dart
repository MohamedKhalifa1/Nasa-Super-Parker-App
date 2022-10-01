import 'dart:async';

import 'package:flutter/material.dart';

import '../loginScreen/loginScreen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();


    Timer(
        Duration(milliseconds: 3800),
            () => Navigator.push(this.context,
            MaterialPageRoute(builder: (context) =>LoginPageScreen()))); //name of login page



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body:
        Stack(
          children: [
            Image.asset("assets/images/splashbackground.png",fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset("assets/images/logo.png",width: 320,),
            )
          ],
        ));
  }


}