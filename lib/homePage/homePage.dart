import 'package:flutter/material.dart';
import 'package:nasa_space_app/levelsPages/levelOne/levelOne.dart';
import 'package:nasa_space_app/levelsPages/levelSeven/levelSeven.dart';

import '../compnent/defaultButton/defaultButton.dart';
import '../splash_screen/splashScreen.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: Drawer(
          backgroundColor:const Color(0xff9CCDDC) ,

          child:
          ListView(


              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(

                  decoration: const BoxDecoration(
                    color: Color(0xff5591A9),


                  ),
                  child:
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 180,bottom: 20),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xff054569),

                          child:CircleAvatar(
                            radius: 37,
                            backgroundColor:Color(0xff054569),
                          ) ,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 180),
                        child: Text("Name",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      )

                    ],
                  ),
                ),

                ListTile(
                  leading: const Icon(Icons.people,color: Colors.white,size: 30,),
                  title: const Text('profile',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Divider(color: Colors.white,),
                ),

                ListTile(
                  leading: const ImageIcon(
                    AssetImage("assets/images/friends.png"),
                    color: Color(0xFFFFFFFF),size: 25,
                  ),
                  title: const Text('friends',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Divider(color: Colors.white,),
                ),
                ListTile(
                  leading: const ImageIcon(
                    AssetImage("assets/images/coins.png"),
                    color: Color(0xFFFFFFFF),size: 25,
                  ),
                  title: const Text('coins',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Divider(color: Colors.white,),
                ),
                ListTile(
                  leading: const ImageIcon(
                    AssetImage("assets/images/setting.png"),
                    color: Color(0xFFFFFFFF),size: 25,
                  ),
                  title: const Text('settings',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Divider(color: Colors.white,),
                ),
                ListTile(
                  leading: const ImageIcon(
                    AssetImage("assets/images/resourses.png"),
                    color: Color(0xFFFFFFFF),size: 25,
                  ),
                  title: const Text('resources',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Divider(color: Colors.white,),
                ),
                ListTile(
                  leading: const ImageIcon(
                   AssetImage('assets/images/logout.png'),
                    color: Color(0xFFFFFFFF),size: 25,
                  ),
                  title: const Text('log out',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),


              ])),


      extendBodyBehindAppBar: true,


      appBar: AppBar(backgroundColor: Colors.white.withOpacity(0.3),

iconTheme: IconThemeData(color: Colors.white),

        //  leading: IconButton(icon:Icon(Icons.menu),color: Colors.white ,onPressed: (){},),
        actions: [
          IconButton(icon:const Icon(Icons.info),color: Colors.white ,onPressed: (){},),

        ],
      ),


      body:
      Stack(
          children:[
            Image.asset("assets/images/background.png",width: MediaQuery.of(context).size.width,fit: BoxFit.cover,height: MediaQuery.of(context).size.height,),
            Padding(
              padding: const EdgeInsets.only(left: 200,top: 95),
              child: DefaultButtom(text: "7",pageRoute: LevelSevenScreen(),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35,top: 185),
              child: DefaultButtom(text: "6",),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260,left: 270),
              child: DefaultButtom(text: "5",),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100,top: 300),
              child: DefaultButtom(text: "4",),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 375,left: 220),
              child: DefaultButtom(text: "3",),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 470,left: 40),
              child: DefaultButtom(text: "2"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 510,left: 170),
              child: DefaultButtom(text: "1",pageRoute: LevelOneScreen(),),
            )
          ]
      ),
    );
  }
}