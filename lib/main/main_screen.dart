
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
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Reroll',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.dehaze_rounded),),
        ],
      ),
      body: SafeArea(
    child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                child: Column(
            children: [
              Center(
                child: Text('경기 정보',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(width: 150,height: 90,color: Colors.grey,),
                    SizedBox(width: 5,),
                    Container(width: 150,height: 90,color: Colors.grey,),
                    SizedBox(width: 5,),
                    Container(width: 150,height: 90,color: Colors.grey,),
                    SizedBox(width: 5,),
                    Container(width: 150,height: 90,color: Colors.grey,)
                    ]
              ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton(onPressed: (){

                },style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xffB8D7E0)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ) ,child: Text('더보기',style: TextStyle(color: Color(0xffB8D7E0),)))
              ),
              SizedBox(height: 10,),
              Divider(thickness: 6,color: Color(0xffE9F2F6),),
              SizedBox(height: 10,),
              //TODO 게시판 연동 후 게시판 만들기
              SizedBox(
                height: 200,
                child: Container(
                  color: Colors.grey,
                ),
              )
            ],
        ),
        )
      ),
      )
    );

  }
}