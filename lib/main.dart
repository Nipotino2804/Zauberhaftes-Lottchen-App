import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zhl_app/variables.dart';
import 'package:zhl_app/widgets.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      debugShowCheckedModeBanner: true,
      title: title,
      home: Startpage(),
    );
  }
}

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.indigo,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.house_outlined),
                activeIcon: Icon(Icons.house_rounded),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                activeIcon: Icon(Icons.supervised_user_circle),
                label: "Konatkt"),
            BottomNavigationBarItem(
                icon: Icon(Icons.meeting_room_outlined),
                activeIcon: Icon(Icons.meeting_room),
                label: "Räumlichkeiten"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Mehr")
          ]),
      body: currentSite1[currentIndex],
    );
  }
}
