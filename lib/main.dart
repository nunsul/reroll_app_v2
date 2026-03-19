import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReRoll',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainBoardScreen(),
    );
  }
}

class MainBoardScreen extends StatefulWidget {
  const MainBoardScreen({super.key});

  @override
  State<MainBoardScreen> createState() => _MainBoardScreenState();
}

class _MainBoardScreenState extends State<MainBoardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    Center(child: Text('홈 화면')),
    Center(child: Text('경기정보 화면')),
    Center(child: Text('게시판 화면')),
    Center(child: Text('채팅 화면')),
    Center(child: Text('승부예측 화면')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReRoll'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
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
            icon: Icon(Icons.emoji_events),
            label: '예측',
          ),
        ],
      ),
    );
  }
}