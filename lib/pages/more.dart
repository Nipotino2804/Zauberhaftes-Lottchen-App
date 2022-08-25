import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/variables.dart';
import 'package:app/widgets.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: costomAppBar(
            "Mehr", true, textStyle(24, FontWeight.w500, Colors.black)),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
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
                        child: Image(
                            image: NetworkImage(
                                "https://zauberhaftes-lottchen.de/webapp/essensplan.jpg"))),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: GestureDetector(
                        onTap: () async {
                          if (!await launchUrl(
                              Uri.parse(
                                  "https://zauberhaftes-lottchen.de/impressum/"),
                              mode: LaunchMode.externalApplication)) {}
                        },
                        child: SimpleDialog(
                          elevation: 4,
                          title: Text(
                            "Impressum\n",
                            textAlign: TextAlign.center,
                            style: textStyle(18, FontWeight.w400, Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
