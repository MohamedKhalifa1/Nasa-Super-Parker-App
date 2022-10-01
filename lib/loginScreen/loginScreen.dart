import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:nasa_space_app/homePage/homePage.dart';



class LoginPageScreen extends StatefulWidget {




  @override
  State<LoginPageScreen> createState() => _LoginPageScreen();
}

class _LoginPageScreen extends State<LoginPageScreen> {
  @override
  @override
  Widget build(BuildContext context) {
var emailController=TextEditingController();
var passwordController=TextEditingController();
var formKey=GlobalKey<FormState>();
    return Scaffold(

      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
             color: HexColor('CED7E0')
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
children: [
  Image(image: AssetImage('assets/images/sun.png')),

  Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      SizedBox(height: 185,),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              child: Container(

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
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
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 30.0),
                       child: Container(
                         decoration: BoxDecoration(
                           color:HexColor('5591A9') ,
borderRadius: BorderRadius.circular(50),
                         ),
                         child: TabBar(

indicator: BoxDecoration(
  color: HexColor('9CCDDC'),
  borderRadius: BorderRadius.circular(50)
),                         tabs: [
                           Tab(
                           child: Text('LogIn',style: TextStyle(
                             color: Colors.white,
                             fontSize: 16,
                             fontWeight: FontWeight.bold
                           ),),),
                           Tab(
                           child: Text('SignUp',style: TextStyle(
                             color: Colors.white,
                             fontSize: 16,
                             fontWeight: FontWeight.bold
                           ),),),

                         ]),
                       ),
                     ),
                      Container(

                        child: SizedBox(
                          height:700,
                          child:  TabBarView(
                            physics: BouncingScrollPhysics(),

                            children: [
Column(
  children: [
    TextButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()) );
    }, child: Text('or continue as a guest',style: TextStyle(
        color: HexColor('5591A9'),
        fontSize: 16
    ),)),
    SizedBox(height: 30,),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
              keyboardType: TextInputType.emailAddress,

              cursorColor:  HexColor('5591A9'),
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter email or username',
                  hintStyle: TextStyle(
                    color: HexColor('898484'),
                  ),
                  label: Text('Email Address',
                    style: TextStyle(
                      color:  HexColor('5591A9'),

                    ),)
              ),
              validator: (value){
                if(value!.isEmpty){
                  return'Please Enter an Email';
                }else{
                  return null;
                }}
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(

            cursorColor:  HexColor('5591A9'),
            keyboardType: TextInputType.visiblePassword,
            controller: passwordController,

            decoration: InputDecoration(

                hintText: 'Enter password',
                hintStyle: TextStyle(
                  color: HexColor('898484'),
                ),
                label: Text('Password',
                  style: TextStyle(
                    color:  HexColor('5591A9'),


                  ),)
            ),
            validator: (value){
              if(value!.isEmpty){
                return'password is too short';
              }else{
                return null;
              }
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){}, child: Text('forgot password?',style: TextStyle(
                color: HexColor('5591A9'),
                fontSize: 15

            ),)),

          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: HexColor('9CCDDC'),
            ),
            child: MaterialButton(


              onPressed: (){
                if(formKey.currentState!.validate()){

                }else{}
              },child: Text('Log In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),),),


          ),

        ),
      ],
    ),
    SizedBox(height: 20,),
    Text('OR',style: TextStyle(
        color: Colors.grey,
        fontSize: 20
    ),),
    SizedBox(
      height: 30,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          width: 80,
          child:   IconButton(

              onPressed: (){}, icon: Image(
            image: AssetImage('assets/images/facebook.png'),
          )),
        ) ,
        Container(
          width: 80,
          child:   IconButton(

              onPressed: (){}, icon: Image(
            image: AssetImage('assets/images/google.png'),
          )),
        ) ,
        Container(
          width: 80,
          child:   IconButton(

              onPressed: (){}, icon: Image(
            image: AssetImage('assets/images/twitter.png'),
          )),
        ) ,
      ],

    )
  ],
),
                              Column(
                                children: [
                                  TextButton(onPressed: (){}, child: Text('or continue as a guest',style: TextStyle(
                                      color: HexColor('5591A9'),
                                      fontSize: 16
                                  ),)),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10.0,right: 10,left: 10),
                                        child: TextFormField(
                                            keyboardType: TextInputType.emailAddress,

                                            cursorColor:  HexColor('5591A9'),
                                            controller: emailController,
                                            decoration: InputDecoration(
                                                hintText: 'Enter email or username',
                                                hintStyle: TextStyle(
                                                  color: HexColor('898484'),
                                                ),
                                                label: Text('Email Address',
                                                  style: TextStyle(
                                                    color:  HexColor('5591A9'),

                                                  ),)
                                            ),
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return'Please Enter an Email';
                                              }else{
                                                return null;
                                              }}
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(

                                          cursorColor:  HexColor('5591A9'),
                                          keyboardType: TextInputType.visiblePassword,
                                          controller: passwordController,

                                          decoration: InputDecoration(

                                              hintText: 'Enter password',
                                              hintStyle: TextStyle(
                                                color: HexColor('898484'),
                                              ),
                                              label: Text('Password',
                                                style: TextStyle(
                                                  color:  HexColor('5591A9'),


                                                ),)
                                          ),
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return'password is too short';
                                            }else{
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(

                                          cursorColor:  HexColor('5591A9'),
                                          keyboardType: TextInputType.visiblePassword,
                                          controller: passwordController,

                                          decoration: InputDecoration(

                                              hintText: 'Confirm Password',
                                              hintStyle: TextStyle(
                                                color: HexColor('898484'),
                                              ),
                                              label: Text('Password',
                                                style: TextStyle(
                                                  color:  HexColor('5591A9'),


                                                ),)
                                          ),
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return'password is too short';
                                            }else{
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(onPressed: (){}, child: Text('forgot password?',style: TextStyle(
                                              color: HexColor('5591A9'),
                                              fontSize: 15

                                          ),)),

                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 50),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: HexColor('9CCDDC'),
                                          ),
                                          child: MaterialButton(


                                            onPressed: (){
                                              if(formKey.currentState!.validate()){

                                              }else{}
                                            },child: Text('Sign Up',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20
                                            ),),),


                                        ),

                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Text('OR',style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20
                                  ),),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Container(
                                        width: 80,
                                        child:   IconButton(

                                            onPressed: (){}, icon: Image(
                                          image: AssetImage('assets/images/facebook.png'),
                                        )),
                                      ) ,
                                      Container(
                                        width: 80,
                                        child:   IconButton(

                                            onPressed: (){}, icon: Image(
                                          image: AssetImage('assets/images/google.png'),
                                        )),
                                      ) ,
                                      Container(
                                        width: 80,
                                        child:   IconButton(

                                            onPressed: (){}, icon: Image(
                                          image: AssetImage('assets/images/twitter.png'),
                                        )),
                                      ) ,
                                    ],

                                  )
                                ],
                              ),

                            ],
                          ) ,
                        ),
                      )
,

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    ],
  ),
],

            ),
          ),

      ),
    );
  }
}






















