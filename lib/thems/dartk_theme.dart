import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Colors.orange;
const lightColor = Colors.orange;
const backgroundColor = Colors.orange;

ThemeData darkTheme() {
  return ThemeData(
// primarySwatch: Colors.orange,
 brightness: brightness,
// textTheme: TextTheme(
// body1: TextStyle(color: Colors.black),
// display4: TextStyle(fontSize: 78 ),
// button: TextStyle(color: Colors.orange),
// headline1: TextStyle(color: Colors.orange),
// ),
  
  primaryColor: Colors.orange,
  accentColor: Colors.black26,
  
  
  );
}