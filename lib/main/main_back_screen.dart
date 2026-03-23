import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class main_back_screen extends StatefulWidget{
  const main_back_screen({super.key});
  @override
  State<main_back_screen> createState() => _main_back_screenState();
}

class _main_back_screenState extends State<main_back_screen> {
 int _selectedIndex = 0;
 final List<Widget> _screen= [
   Center(child: Text('홈 화면')),
   Center(child: Text('경기정보 화면')),
   Center(child: Text('게시판 화면')),
   Center(child: Text('채팅 화면')),
   Center(child: Text('마이페이지')),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Color(0xff26485F),
          unselectedItemColor: Color(0xff26485F).withOpacity(0.3),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff26485F)),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff26485F).withOpacity(0.3)),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 3,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 24,),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined,size: 20,),
              label: '경기정보',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined,size: 20,),
              label: '게시판',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat,size: 20,),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 20,),
              label: '마이페이지',
            ),
          ]),
    ) ;
  }
}