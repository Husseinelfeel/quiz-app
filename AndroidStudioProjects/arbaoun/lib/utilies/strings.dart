import 'package:flutter/material.dart';

abstract class TextApp {
  static const Text splashScreen = const Text(
    "ألاربعون النوويه",
    style: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
  );

  static const Text topHomeScreen = const Text(
    "الأربعون النوويه",
    textDirection: TextDirection.rtl,
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
  );
  static const Text headerHomeScreen = const Text(
    "لحفظ وسماع الاحاديث النبوية",
    style: TextStyle(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 30),
  );

  static const Text bookOneScreen = const Text("الأحاديث الاربعون",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),);
  static const Text bookTwoScreen = const Text("الأستماع للأحاديث",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),);
  static const Text bookThreeScreen = const Text("الأحاديث المحفوظه",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),);
}
