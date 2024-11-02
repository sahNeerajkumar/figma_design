import 'dart:async';

import 'package:figma_design/Welcome/welcome.dart';
import 'package:flutter/material.dart';

import '../Home_File/FigmaHomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 3),
  Timer(Duration(seconds: 3),() =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Welcome(),)) );

    }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor:Colors.cyan,title: Center(child: Text('Splash Screen',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
