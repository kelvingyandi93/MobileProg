import 'dart:async';
import 'dart:math';

import 'package:myapp1/Clock.dart';
import 'package:myapp1/DigiClock.dart';
import 'package:myapp1/icon.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({ Key? key }) : super(key: key);

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0, minutes = 0, hours = 0;
  String Secondigit = "00";
  String Minutedigit = "00";
  String Hourdigit = "00";

  late Timer timer;
  bool Start = false;

  List Laps = [];


  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stopwatch"),
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
        ),
        backgroundColor: Color.fromARGB(255, 10, 10, 10),
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25, bottom: 16, left: 16,right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0),
                    child: Center(
                      child: Text('00:00:00',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 80,
                          fontWeight: FontWeight.bold
                          ),
                      ), 
                    ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 2), 
                    child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 40),
                              child: TextButton(
                                onPressed: () {

                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Color.fromARGB(31, 255, 255, 255),
                                  shape: CircleBorder(),
                                ),
                                child: Icon(
                                  Icons.flag_sharp,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: 30,
                                  )
                              ),
                            ),
                          ), 
                        ),
                      Expanded(
                        child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 40),
                              child: TextButton(
                                onPressed: () {

                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Color.fromARGB(31, 255, 255, 255),
                                  shape: CircleBorder(),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Color.fromARGB(255, 0, 255, 13),
                                  size: 50,
                                  )
                              ),
                            ),
                          ), 
                        ),
                      Expanded(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 40),
                              child: TextButton(
                                onPressed: () {

                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Color.fromARGB(31, 255, 255, 255),
                                  shape: CircleBorder(),
                                ),
                                child: Icon(
                                  Icons.stop,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  size: 30,
                                  )
                              ),
                            ),
                          ), 
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Padding (
                    padding: EdgeInsets.only(bottom: 20, top: 0),
                      child: Container(
                        height: 301,
                        width: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(15, 255, 255, 255)
                        ),
                      )
                    )
                )
              ],
            ), 
          )
        ) ,
      ),
    );
  }
}