import 'package:flutter/material.dart';

TextStyle textStyle(double size, FontWeight fontWeight, Color fontColor) {
  return TextStyle(fontSize: size, fontWeight: fontWeight, color: fontColor);
}

AppBar costomAppBar(String title, bool centerTitle, TextStyle textStyle) {
  return AppBar(
    title: Text(
      title,
      style: textStyle,
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
  );
}

ThemeData myTheme() {
  return ThemeData(primarySwatch: Colors.indigo);
}
