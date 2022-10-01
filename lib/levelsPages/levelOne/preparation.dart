import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:video_player/video_player.dart';




class LevelOnePreparation extends StatefulWidget {
  const LevelOnePreparation({ super.key });

  @override
  State<LevelOnePreparation> createState() => _LevelOnePreparation();

}


class _LevelOnePreparation extends State<LevelOnePreparation> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/video/nasa.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
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
                              backgroundColor:Colors.white,
                              child:Center(
                                child: CircleAvatar(
                                  radius: 37,
                                  backgroundImage: NetworkImage('https://i.ytimg.com/vi/up8LF24cQC0/hqdefault.jpg'),
                                ),                            )
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
          child: Text('Level 1',style: TextStyle(
              fontSize: 25,color: Colors.white
          ),),
        ),
        actions: [
          IconButton(onPressed: (){}, icon:  Icon(Icons.home),
          )
        ],
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(

              width: MediaQuery.of(context).size.width,
              height: 580,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        offset: Offset(0, 4),

                        blurRadius: 3
                    )
                  ],
                  color: HexColor('ffffff').withOpacity(.6),
                  borderRadius: BorderRadius.circular(50)
              ),
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 450,
                        child: TabBarView(
                            physics: BouncingScrollPhysics(),
                            children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:Container(
                                  width:MediaQuery.of(context).size.width,

                                  child: Center(
                                    child: _controller.value.isInitialized
                                        ? AspectRatio(
                                      aspectRatio: _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    )
                                        : Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                              ),
                             Container(
                               decoration: BoxDecoration(
                                 color: HexColor('9CCDDC'),
                                 borderRadius: BorderRadius.circular(10)
                               ),
                               child: MaterialButton(onPressed: (){setState(() {
                                 _controller.value.isPlaying
                                     ? _controller.pause()
                                     : _controller.play();
                               });},child: Icon(Icons.play_arrow),),
                             )

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: HexColor('#878787'),

                              ),
                              height: 400,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('\nUnlike Earth, the Sun doesn’t have a solid surface. But it does have a superheated atmosphere, made of solar material bound to the Sun by gravity and magnetic forces. As rising heat and pressure push that material away from the Sun, it reaches a point where gravity and magnetic fields are too weak to contain it. That point, known as the Alfvén critical surface, marks the end of the solar atmosphere and the beginning of the solar wind. the solar wind is made up of plasma like the sun, where negatively charged electrons have separated from positively charged ions, creating a sea of free-floating particles with individual electric charges.',style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: HexColor('#878787'),

                              ),
                              height: 400,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('\n These free-floating particles mean plasma carries electric and magnetic fields, and changes in the plasma often make marks on those fields. Parker Solar Probe measured this flow of electrons going in the opposite direction, flipping back towards the Sun — showing that the magnetic field itself must be bending back towards the Sun, rather than Parker Solar Probe merely encountering a different magnetic field line from the Sun that points in the opposite direction. This suggests that the switchbacks are kinks in the magnetic field.',style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                        ]),
                      ),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child:   Container(
                          decoration: BoxDecoration(
                            color: HexColor('5591A9'),
                            borderRadius: BorderRadius.circular(50),

                          ),
                          child:   TabBar(
                              indicator: BoxDecoration(
                                  color: HexColor('9CCDDC'),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              tabs: [
                                Tab(
                                  child: Text('Video',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),    ),
                                Tab(
                                  child: Text('Story 1',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),    ),
                                Tab(
                                  child: Text('Story 2',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),    ),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ) ,
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}




