

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reroll_app_v2/login/login_create_account.dart';

class login_signup extends StatefulWidget{
  const login_signup({super.key});
  @override
  State<login_signup> createState()=> _login_signup();
}
class _login_signup extends State<login_signup>{
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _isObscure = true;
  @override
  void dispose(){
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.close),style: IconButton.styleFrom(
            foregroundColor: Color(0xff509AAF)
          ),)
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 80),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' 로그인',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                _textField(controller: _email, hintText: '이메일을 입력하세요'),
                SizedBox(height: 10,),
                _textField(controller: _password, hintText: '비밀번호를 입력하세요'),
                SizedBox(height: 22),
                ElevatedButton(onPressed: (){


                },style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 65),
                    backgroundColor: Color(0xff42707E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    )
                ), child: Text('로그인',style: TextStyle(color: Colors.white,fontSize: 16),)),
                SizedBox(height: 23,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){

                      }, child: Text("아이디/비밀먼호 찾기",style: TextStyle(fontSize: 12,color: Colors.black),)
                      ),
                      Text(" | "),
                      TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>login_create_account()));
                      }, child: Text("회원가입",style: TextStyle(fontSize: 12,color: Colors.black),)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27,),
                Center(
                  child: Text("---------------간편 로그인----------------"),
                )
              ],
            )


            ),
          )

      ),
    );
  }
}

Widget _textField({
  required TextEditingController controller,
  required String hintText,
}) {
  return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            color: Color(0xff42707E),
            fontWeight: FontWeight.w500
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xff509AAF),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Color(0xff509AAF),
          ),
        )
      )
  );
}