import 'package:flutter/material.dart';
import 'intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(), //load intro screen
    );
  }
}
