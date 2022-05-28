import 'dart:async';
import 'package:arbaoun/screens/Home_screen.dart';
import 'package:arbaoun/utilies/colors.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}


class _splashScreenState extends State<splashScreen> {
@override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx)=> homeScreen() ),);
    });
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorApp.primary,
      body: Stack(
        alignment: Alignment.center,
        children: [Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset('assets/images/background.png'),
        ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset('assets/images/1.png')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
