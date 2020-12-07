import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: <Widget>[

          Container(
            //color: Colors.cyan[500],
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80.0),
            constraints: BoxConstraints.expand(height: 500),
            child: Text('\n \n WELCOME!!! \n Next Page... \nHello World',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, color: Colors.black, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}