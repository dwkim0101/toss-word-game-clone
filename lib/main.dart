import 'package:flutter/material.dart';
import 'package:word_find_game/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '단어게임',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFf4f6f7),
        fontFamily: "Pretendard",
        useMaterial3: true,
      ),
      home: const GameScreen(),
    );
  }
}
