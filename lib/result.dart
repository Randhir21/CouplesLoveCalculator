import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

Random rand = Random();

class ResultScreen extends StatelessWidget {
  final String nameres, lovernameres;

  const ResultScreen({Key key, this.nameres, this.lovernameres})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    int res = rand.nextInt(100);
    return SafeArea(
          child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFe11d74),
                Color(0xFFf688bb),
                 Color(0xFFe11d74),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(left: 50,top: 150, child: Text(nameres,style: TextStyle(fontSize: 50,),)),
              Positioned(
                top: 250,
                left: 60,
                child: SvgPicture.asset(
                  "images/love.svg",
                  height: 140,
                  width: 140,
                ),
              ),
              Positioned(
                bottom: 250,
                right: 50,
                child: Text("$lovernameres",style: TextStyle(fontSize: 50,),),
              ),
               Positioned(
                bottom: 150,
                
                child: Text("$res%",style: TextStyle(fontSize: 50,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
