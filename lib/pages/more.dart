import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/variables.dart';
import 'package:app/widgets.dart';

class MoreTab extends StatefulWidget {
  const MoreTab({super.key});

  @override
  State<MoreTab> createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costomAppBar(
          'Mehr', true, textStyle(24, FontWeight.w500, Colors.black)),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                selectCard(context, Icons.restaurant_menu, 'Essensplan', () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => eat(),
                        ));
                  });
                }),
                selectCard(
                    context, Icons.monitor_heart_rounded, 'Gesundheitsplan',
                    () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => gesundheitsplan(),
                        ));
                  });
                }),
              ],
            ),
            selectCardFullWidth(context, Icons.web_asset_outlined, 'Impressum',
                () async {
              if (!await launchUrl(
                  Uri.parse("https://zauberhaftes-lottchen.de/impressum/"),
                  mode: LaunchMode.externalApplication)) {}
            })
          ],
        ),
      ),
    );
  }
}

class eat extends StatelessWidget {
  const eat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Essensplan'),
          centerTitle: true,
          titleTextStyle: textStyle(24, FontWeight.w500, Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () async {
                    if (!await launchUrl(
                        Uri.parse(
                            "https://zauberhaftes-lottchen.de/webapp/essensplan.jpg"),
                        mode: LaunchMode.externalApplication)) {}
                  },
                  child: const Image(
                      image: NetworkImage(
                          "https://zauberhaftes-lottchen.de/webapp/essensplan.jpg"))),
            )
          ],
        ));
  }
}

class gesundheitsplan extends StatelessWidget {
  const gesundheitsplan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesundheitsplan'),
        centerTitle: true,
        titleTextStyle: textStyle(24, FontWeight.w500, Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Image(image: AssetImage("assets/default.png")),
          ),
        ],
      ),
    );
  }
}
