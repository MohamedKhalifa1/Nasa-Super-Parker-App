import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

import '../../questions/question_model.dart';

class LevelOneTakeOff extends StatefulWidget {
  const LevelOneTakeOff({ super.key });

  @override
  State<LevelOneTakeOff> createState() => _LevelOneTakeOff();
}


class _LevelOneTakeOff extends State<LevelOneTakeOff> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
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
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _questionWidget(),
                    _answerList(),
                    _nextButton(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(image: AssetImage('assets/images/aniOne.png',),width: 200,height: 200,)
                      ],
                    )
                  ],
                ),
              ) ,
            ),
          ),
        ),
      ),
    );
  }
  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style:  TextStyle(
            color: HexColor('5591A9'),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: HexColor('5591A9'),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
      )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Colors.orangeAccent : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: HexColor('9CCDDC'),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Congratoulations " : "try again";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Please answer more questions",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}