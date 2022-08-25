import 'package:flutter/material.dart';
import 'package:app/variables.dart';
import 'package:app/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      theme: myTheme(),
      debugShowCheckedModeBanner: true,
      title: title,
      home: const StartApp(),
    );
  }
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      // Check the sizing information here and return your UI
      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return const Startpage();
      }
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const OnlySmartphone();
      }
      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return const OnlySmartphone();
      }

      return const Startpage();
    });
  }
}

class OnlySmartphone extends StatelessWidget {
  const OnlySmartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: costomAppBar("Nicht Verfügbar", true,
            textStyle(24, FontWeight.w600, Colors.black)),
        body: Center(
            child: Text(
          "Diese App ist bisher nur auf dem Smartphone verfügbar!",
          style: textStyle(26, FontWeight.bold, Colors.indigo),
        )),
      ),
      title: title,
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
          items: const [
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
