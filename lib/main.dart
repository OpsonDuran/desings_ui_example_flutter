import 'package:desings_ui_example_flutter/src/views/basic_view.dart';
import 'package:desings_ui_example_flutter/src/views/buttons_view.dart';
import 'package:desings_ui_example_flutter/src/views/scrolling_view.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Desings Examples App',
      initialRoute: 'buttons',
      routes: {
        'basic' : (BuildContext context) => BasicView(),
        'scrolling' : (BuildContext context) => ScrollingView(),
        'buttons' : (BuildContext context) => ButtonsView(),
      },
    );
  }
}