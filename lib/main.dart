import 'package:flutter/material.dart';
import 'package:linkedinclone/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LinkedIn Clone",
      home: HomeScreen(),
    );
  }
}
