import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

Widget LevelScreens(context,String LevelText)=>Scaffold(

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
  appBar: AppBar(
    backgroundColor: HexColor('5591A9'),
    title: Center(
      child: Text('${LevelText}',style: TextStyle(
          fontSize: 25,color: Colors.white
      ),),
    ),
    actions: [
      IconButton(onPressed: (){}, icon:  Icon(Icons.home)
      )
    ],
  ),
  // body: ,
);

