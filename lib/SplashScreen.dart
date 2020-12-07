import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen/NextPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();

    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => NextScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: <Widget>[

          Container(
            //color: Colors.cyan[500],
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 100.0),
            constraints: BoxConstraints.expand(height: 500),
            child: Text('\n \n Welcome!!!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0, color: Colors.black, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}