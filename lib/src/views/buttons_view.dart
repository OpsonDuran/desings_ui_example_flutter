import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//This code is for status bar colorsBalck

    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white)
    // );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
              child: Column(
            children: <Widget>[
              _titles(),
            ],
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pinkAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outlined),title: Text('Charts')),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),title: Text('Calendar'))
        ],
      ),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final boxPink = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 320.0,
        height: 320.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: boxPink,
          top: -100.0,
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Classify this Transactions',
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
          ],
        ),
      ),
    );
  }


  Widget _bottonNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        
      ),
    );
  }
}
