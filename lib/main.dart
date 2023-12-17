import 'package:flutter/material.dart';
import 'package:tour_guide/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour Guide App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD4ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: MainScreen(),
    );
  }
}