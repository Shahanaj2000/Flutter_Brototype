
import 'package:flutter/material.dart';
import 'package:my_titorials/HiveDB/Screens/Home/screen_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudentDetails',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ScreenHome(),
    );
  }
}