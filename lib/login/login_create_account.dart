
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reroll_app_v2/login/login_phone.dart';

class login_name extends StatefulWidget{
  const login_name ({super.key});
  @override
  State<login_name> createState() => _login_name();
}
class _login_name extends State<login_name>{
 final name = TextEditingController();
 String? errorText;
  @override
  void dispose(){
    name.dispose();
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login_phone()));
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
                      Text('''닉네임을
입력해주세요''',style: TextStyle(fontSize: 30,color: Colors.white),),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                        controller: name,
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
                          hintText: '닉네임을 입력하세요.',
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
                        )
                    ],
                  ),
                ))
        ),
        ),
      
    );

  }
}
