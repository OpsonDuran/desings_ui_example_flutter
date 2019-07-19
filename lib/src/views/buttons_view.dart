import 'dart:math';
import 'dart:ui' as prefix0;
import 'dart:ui';

import 'package:flutter/material.dart';

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
              _buttonsCustom(),
            ],
          ))
        ],
      ),
      bottomNavigationBar: _bottonNavigationBar(context),
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

  Widget _bottonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0), title: Container()),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
      ]),
    );
  }

  Widget _buttonsCustom() {
    return Table(
      children: [
        TableRow(children: [
          _createButtonCustom(Colors.brown,Icons.access_time,'Time'),
          _createButtonCustom(Colors.cyanAccent,Icons.pages,'Pages'),
        ]),
        TableRow(children: [
          _createButtonCustom(Colors.amber,Icons.accessible,'Accessible'),
          _createButtonCustom(Colors.blue,Icons.account_circle, 'Account'),
        ]),
        TableRow(children: [
          _createButtonCustom(Colors.pink,Icons.palette,'Palette'),
          _createButtonCustom(Colors.orange,Icons.offline_bolt,'Bolt'),
        ]),
        TableRow(children: [
          _createButtonCustom(Colors.purple,Icons.vpn_key,'keys'),
          _createButtonCustom(Colors.red,Icons.warning,'Warnings'),
        ])
      ],
    );
  }

  Widget _createButtonCustom(Color color,IconData icon,String text) {
    return ClipRect(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
            child: Container(
          height: 180.0,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromRGBO(62, 66, 107, 0.70),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icon,color: Colors.white,size: 30.0,),),
              Text(text,style: TextStyle(color: color),),
              SizedBox(height: 5.0,)
          ],),
        ),
      ),
    );
  }
}
