import 'package:flutter/material.dart';
import 'package:Separate_Pages/screens/home_screen.dart';
import 'package:Separate_Pages/screens/temperature_screen.dart';
import 'package:Separate_Pages/theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      //home: TemperatureScreen(),
      home: MyHomeScreen(),
    );
  }
}
