import 'package:flutter/material.dart';

class DefaultButtom extends StatelessWidget {
  DefaultButtom({super.key, required this .text,this.pageRoute }) ;
  Widget?pageRoute;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => pageRoute!),
        );
      },
      child:Stack(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xff5591A9),
            radius: 35,
            child: Text(text,style: const TextStyle(color: Colors.white,fontFamily: "Lobster-Regular",fontSize: 40,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}