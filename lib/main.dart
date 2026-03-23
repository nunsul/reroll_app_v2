import 'package:flutter/material.dart';

import 'main/main_back_screen.dart';

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
      home: main_back_screen(),
    );
  }
}

