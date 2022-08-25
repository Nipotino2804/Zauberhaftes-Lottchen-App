import 'package:flutter/material.dart';
import 'package:app/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costomAppBar(
          "Home", true, textStyle(24, FontWeight.w500, Colors.black)),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
            ),
            SimpleDialog(
              title: Text(
                "Das Zauberhaftes Lottchen ist ...\n\n… eine Großtagespflege in Neukirchen-Vluyn für Kinder im Alter von 0,5-3 Jahren. Wir sind ein Team bestehend aus zwei Tagesmüttern, mit mehrjähriger Erfahrung in der Kinderbetreuung. Die Kinder werden liebevoll und individuell begleitet und altersgerecht gefördert.\n\nWir freuen uns auf euch!\n\nDiana & Jessica\n",
                textAlign: TextAlign.center,
                style: textStyle(22, FontWeight.w800, Colors.black),
              ),
              backgroundColor: Colors.lightGreen.shade100,
              elevation: 3,
            )
          ]);
        },
      ),
    );
  }
}
