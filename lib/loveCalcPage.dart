import 'package:flutter/material.dart';
import 'package:lovecalculator/result.dart';
import 'package:google_fonts/google_fonts.dart';

class LoveCalculator extends StatefulWidget {
  @override
  _LoveCalculatorState createState() => _LoveCalculatorState();
}

class _LoveCalculatorState extends State<LoveCalculator> {
  final _formkey = GlobalKey<FormState>();
  String name, lovername;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Love Calculator",
              style: GoogleFonts.dancingScript(
                fontSize: 40,
              )),
        ),
        body: Container(
          decoration: BoxDecoration(
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
          child: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView(
                children: [
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                  ),
                  Center(
                      child: Text(
                    "You",
                    style: TextStyle(fontSize: 40),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {
                        name = value.toUpperCase();
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Plese Enter your name.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Name',
                          hintText: 'Enter Your Name'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  Center(
                      child: Text(
                    "Loves",
                    style: TextStyle(fontSize: 40),
                  )),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  Center(
                      child: Text(
                    "Your Lover",
                    style: TextStyle(fontSize: 40),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (value) {
                        lovername = value.toUpperCase();
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Plese Enter your lover name.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: 'Name',
                          hintText: 'Enter Your lover Name'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  Center(
                    child: RaisedButton(
                      color: Colors.pink,
                      onPressed: () {
                        if (_formkey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                nameres: name,
                                lovernameres: lovername,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Calculate",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
