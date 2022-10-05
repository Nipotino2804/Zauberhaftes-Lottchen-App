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

Widget selectCard(BuildContext context, iconName, String text, onTap) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.42,
    height: MediaQuery.of(context).size.height * 0.08,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
                child: Icon(
              iconName,
              size: MediaQuery.of(context).size.height * 0.03,
            )),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      )),
    ),
  );
}

Widget selectCardFullWidth(BuildContext context, iconName, String text, onTap) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.84,
    height: MediaQuery.of(context).size.height * 0.08,
    child: GestureDetector(
      onTap: onTap,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
                child: Icon(
              iconName,
              size: MediaQuery.of(context).size.height * 0.03,
            )),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      )),
    ),
  );
}
