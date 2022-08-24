import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zhl_app/variables.dart';
import 'package:zhl_app/widgets.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: costomAppBar(
            "Mehr", true, textStyle(24, FontWeight.w500, Colors.black)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Essensplan:",
                  style: textStyle(26, FontWeight.w500, Colors.black),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if (!await launchUrl(eat,
                      mode: LaunchMode.externalApplication)) {}
                },
                child: Image.network(
                  "http://beta.zauberhaftes-lottchen.de/essensplan.jpg",
                ),
              ),
              Text(
                "Zum Herunterladen auf das Bild klicken",
                style: textStyle(18, FontWeight.normal, Colors.black),
              ),
            ],
          ),
        ));
  }
}
