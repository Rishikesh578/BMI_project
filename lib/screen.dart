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

     Timer(Duration(seconds:3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
        builder: (context) => MyApp(),
        )); 
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
           SizedBox(height: 28),
         Center(
            child:
              CircleAvatar(
            backgroundImage: AssetImage('assets/BMIAp.png'),
            radius: 130),
          ),

           SizedBox(height:90),
           ListTile(
            title: Text('Designed By Rishikesh Raj',
            style: TextStyle(fontStyle:FontStyle.italic),
            textAlign: TextAlign.center,
            ),
           )
       ],
     ),

      
       
      
     ) ;
    
  }
}