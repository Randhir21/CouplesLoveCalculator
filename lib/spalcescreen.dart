import 'dart:async';

import 'package:flutter/material.dart';

import 'loveCalcPage.dart';

class SpalaceScreen extends StatefulWidget {
  @override
  _SpalaceScreenState createState() => _SpalaceScreenState();
}

class _SpalaceScreenState extends State<SpalaceScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoveCalculator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Container(decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFe11d74),
                Color(0xFFf688bb),
                Color(0xFFe11d74),
                // Color(0xFFffb2a7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(child: Text("Love Calculator",style: TextStyle(fontSize: 30),)),
          ),
      ),
    );
  }
}
