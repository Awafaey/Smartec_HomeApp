//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:Separate_Pages/components/header_view.dart';
import 'package:Separate_Pages/components/home_service_view.dart';
import 'package:Separate_Pages/components/temperature_view.dart';
import 'package:Separate_Pages/components/Lamp_switch.dart';

final bulbOnColor = const Color(0xFFFFE12C);
final bulbOffColor = const Color(0xFFC1C1C1);
final darkGray = const Color(0xFF232323);
final animationDuration = const Duration(milliseconds: 500);

class MyHomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return HomeScreen();
  }
}

class HomeScreen extends State<MyHomeScreen> {
  var _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: HeaderView(),
                    ),
                    Expanded(
                      flex: 2,
                      child: HomeServiceView(),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1, child: TemeratureView()),
              /*             Expanded(
                  flex: 1,
                  child: LampSwitch(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    toggleOnColor: bulbOnColor,
                    toggleOffColor: bulbOffColor,
                    color: darkGray,
                    isSwitchOn: _isSwitchOn,
                    onTap: () {
                      setState(() {
                        _isSwitchOn = !_isSwitchOn;
                      });
                    },
                    animationDuration: animationDuration,
                  )),
                  */
            ],
          ),
        ),
      ),
    );
  }
}
