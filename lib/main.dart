import 'package:flutter/material.dart';
import 'package:myapp1/Clock.dart';
import 'package:myapp1/icon.dart';
import 'package:myapp1/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp1/DigiClock.dart';
import 'package:myapp1/StopWatch.dart';

void main() {
  runApp(app());
}

// ignore: camel_case_types
class app extends StatelessWidget {
  app({Key? key}) : super(key: key);

  @override
  
    Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "persistent navbar",
      home: _MyAppState(),
    );
  }
}

class _MyAppState extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: currentIndex == 0 ? Color.fromARGB(17, 255, 255, 255) : Color.fromARGB(255, 0, 0, 0),
        activeColor: currentIndex == 0 ? Color.fromARGB(255, 126, 122, 122) : Colors.black,
        inactiveColor: currentIndex == 0 ? Color.fromARGB(255, 255, 255, 255) : Colors.grey,
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock, size: 20,),
            label: 'Analog',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.ampm,size: 20,),
            label: 'Digital',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.accessibility,size: 20,),
            label: 'Stopwatch',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person,size: 20,),
            label: 'Timer',
          ),
        ],
        ),
        tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder:(context){
              return CupertinoPageScaffold(child: Clock(),);
            });
          case 1:
            return CupertinoTabView(builder:(context){
              return CupertinoPageScaffold(child: DigiClock(),);
            });
          case 2:
            return CupertinoTabView(builder:(context){
              return CupertinoPageScaffold(child: StopWatch(),);
            });
          case 3:
            return CupertinoTabView(builder:(context){
              return CupertinoPageScaffold(child: Clock(),);
            });
          default: return CupertinoTabView(builder:(context){
              return CupertinoPageScaffold(child: Clock(),);
            });
        }
      },
    );
  }
}