import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovecalculator/spalcescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Love Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.dancingScriptTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpalaceScreen(),
    );
  }
}

