import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main(){
  runApp(Music());
}


class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}