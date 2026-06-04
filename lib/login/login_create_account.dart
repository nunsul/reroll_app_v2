import 'package:flutter/material.dart';

class login_create_account extends StatefulWidget {
  const login_create_account({super.key});

  @override
  State<login_create_account> createState() => _login_create_account();
}

class _login_create_account extends State<login_create_account> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _password2 = TextEditingController();
  final _phone2 = TextEditingController();

  String? emailError;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    _phone.dispose();
    _password2.dispose();
    _phone2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Text(
            '정보입력',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
              bottom: 10,
              left: 25,
              right: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text_in(text: '아이디(이메일)'),
                SizedBox(height: 15),

                login_textField(
                  controller: _email,
                  hinttext: '아이디(이메일)',
                  errorText: emailError,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        emailError = null;
                      } else if (!RegExp(
                        r'^[^@]+@[^@]+\.[^@]+',
                      ).hasMatch(value)) {
                        emailError = '올바른 이메일 형식이 아닙니다.';
                      } else {
                        emailError = null;
                      }
                    });
                  },
                ),

                SizedBox(height: 15),

                text_in(text: '닉네임'),
                SizedBox(height: 9),
                login_textField(
                  controller: _name,
                  hinttext: '닉네임',
                ),

                SizedBox(height: 15),

                text_in(text: '비밀번호'),
                SizedBox(height: 9),
                login_textField(
                  controller: _password,
                  hinttext: '비밀번호',
                ),

                SizedBox(height: 15),

                text_in(text: '비밀번호 확인'),
                SizedBox(height: 9),
                login_textField(
                  controller: _password2,
                  hinttext: '비밀번호 확인',
                ),

                SizedBox(height: 15),

                text_in(text: '휴대폰 번호'),
                SizedBox(height: 9),
                login_textField(
                  controller: _phone,
                  hinttext: '휴대폰 번호',
                ),

                SizedBox(height: 15),

                text_in(text: '인증번호 입력'),
                SizedBox(height: 9),
                login_textField(
                  controller: _phone2,
                  hinttext: '인증번호 입력',
                ),

                SizedBox(height: 65),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(child: Padding(padding: EdgeInsets.only(left: 25,right: 25,bottom: 25),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: ElevatedButton(onPressed: (){

      },style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff2b515d),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        )
      ), child: Text('다음',style: TextStyle(fontSize: 16,color: Colors.white),)),)) )
    );
  }
}

Widget login_textField({
  required TextEditingController controller,
  required String hinttext,
  String? errorText,
  Function(String)? onChanged,
}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    style: TextStyle(
      color: Colors.white,
    ),
    decoration: InputDecoration(
      hintText: hinttext,

      hintStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
        fontSize: 12,
      ),

      errorText: errorText,

      errorStyle: TextStyle(
        color: Colors.red,
        fontSize: 12,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget text_in({
  required String text,
}) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.white,
      fontSize: 12,
    ),
  );
}