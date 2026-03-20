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
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports),
              label: '경기정보',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: '게시판',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '마이페이지',
            ),
          ]),
    ) ;
  }
}