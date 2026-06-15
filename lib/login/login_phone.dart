import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login_phone extends StatefulWidget{
  const login_phone ({super.key});
  @override
  State<login_phone> createState() => _login_phone();
}
class _login_phone extends State<login_phone>{
  final phone = TextEditingController();
  final phone2 = TextEditingController();
  String? errorText;
  @override
  void dispose(){
    phone.dispose();
    phone2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        ),
        bottomNavigationBar: SafeArea(
            child:SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(onPressed: (){

              },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )
              ), child: Text('다음',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            )
        ),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('본인인증',style: TextStyle(fontSize: 30,color: Colors.white),),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 4,
                            width: 20,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 2,),
                          Container(
                            height: 4,
                            width: 20,
                            color: Colors.white,
                          ),
                          SizedBox(width: 2,),
                          Container(
                            height: 4,
                            width: 20,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 130,),
                      TextField(
                        controller: phone,
                        onChanged: (va){
                          setState(() {
                            if(va.isEmpty) errorText = null;
                            else if(va.length<=2 || va.contains(" ") || va.length>12) errorText = '공백없이 2자 이상 12자 이하로 입력해주세요.';
                            else errorText = null;
                          });
                        },
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            hintText: '전화번호를 입력하세요.',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )
                            )
                        ),
                      ),
                      SizedBox(height: 6,),
                      if(errorText != null)
                        Text(
                          errorText!,
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      SizedBox(height: 30,),
                      TextField(
                        controller: phone2,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                            hintText: '인증번호를 입력하세요.',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )
                            )
                        ),
                      )
                    ],
                  ),
                ))
        ),
      ),

    );

  }
}
