import 'dart:async';
import 'dart:math';

import 'package:myapp1/DigiClock.dart';
import 'package:myapp1/icon.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class Clock extends StatefulWidget {
  Clock({Key? key }) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  double minuteshand = 0;
  double hourshand = 0;
  double secondshand = 0;
  late Timer timer;
  
  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration (milliseconds: 0), (timer) {
      final now = DateTime.now();
      print(now);
      setState(() {
        secondshand =  360 / 60 * now.second * pi / 180;
        minuteshand = 360 / (60 * 60) * (now.minute * 60 + now.second) * pi / 180;
        hourshand = 360 / (12 * 60 * 60) * ((now.hour % 12) * 60 * 60 + now.minute * 60 + now.second) * pi / 180;
      });
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fliter',
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
          title: Text("Analog Clock"),
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
      ),
        body: Center(
          child: Container(
            child: Stack(
              children: <Widget> [
                Image.asset('Assets/clock.png'),
                //dot
                Container(
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  alignment: Alignment(0, 0),
                ),
                Transform.rotate(
                  child: Container(
                    child: Container(
                      width: 5,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                    ),
                      alignment: Alignment(0, -0.5),
                  ),
                  angle: minuteshand,
                ),
                //minute
                Transform.rotate(
                    child: Container(
                      child: Container (
                            width: 10,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 63, 47, 109)
                          ),
                        ),
                          alignment: Alignment(0, -0.25),
                      ),
                    angle: hourshand,
                  ),
                //second    
                Transform.rotate(
                    child: Container(
                      child: Container (
                          width: 2,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 0, 0)
                          ),
                        ),
                        alignment: Alignment(0,-0.7),
                      ),
                    angle: secondshand,
                  ),
                //dotseconds
                Container(
                    child: Container (
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    alignment: Alignment(0, 0),
                  ),
              ],
            ),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(115, 255, 19, 10),
                width: 4),
              borderRadius: BorderRadius.circular(200)
            ),
          ),
        ),
      ),
    );
  }
}



