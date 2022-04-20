import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:myapp1/Clock.dart';
import 'package:myapp1/icon.dart';
import 'package:myapp1/StopWatch.dart';

class DigiClock extends StatelessWidget {
    
    @override

    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0)),
        home: Scaffold(
        appBar: AppBar(
          title: Text("Digital Clock"),
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
        ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                  child: DigitalClock(
                  digitAnimationStyle: Curves.elasticOut,
                  is24HourTimeFormat: false,
                  areaDecoration: BoxDecoration(
                    color: Color.fromARGB(0, 19, 19, 19),
                  ),
                  hourMinuteDigitTextStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 70,
                  ),
                  amPmDigitTextStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0), fontWeight: FontWeight.bold, fontSize: 30),
                ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}