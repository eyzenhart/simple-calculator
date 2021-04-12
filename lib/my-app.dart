import 'package:flutter/material.dart';
import './main-screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      home: MainScreen(),
    );
  }
}
