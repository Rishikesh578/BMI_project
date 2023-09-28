import 'dart:async';

import 'package:flutter/material.dart';
import 'package:your_bmi/main.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
   @override
  void initState() {
    super.initState();

     Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
        builder: (context) => MyHomePage(),
        )); 
     });

  }












  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child:
          CircleAvatar(
        backgroundImage: AssetImage('assets/bmi_image.png'),
        radius: 130),
      ),
           
      
    );
  }
}