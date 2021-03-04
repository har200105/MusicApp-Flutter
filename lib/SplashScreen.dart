import 'package:flutter/material.dart';
import 'dart:async';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Container(
        alignment:Alignment.center,
        decoration: BoxDecoration(
          gradient:LinearGradient(colors: [Color.fromRGBO(168, 198, 208, 1),Colors.green[300]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: CircularProgressIndicator(
          backgroundColor: Colors.blueGrey,
        ),
      ),


    );
  }
}

