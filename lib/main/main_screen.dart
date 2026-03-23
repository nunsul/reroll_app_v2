
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class main_screen extends StatefulWidget{
  @override
  const main_screen({super.key});
  @override
  State<main_screen> createState()=> _main_screen();
}
class _main_screen extends State<main_screen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Text('Reroll',style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.dehaze_rounded),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('경기정보'),
              SizedBox(height: 5,),

          ],
        ),
        )
      ),
    );

  }
}