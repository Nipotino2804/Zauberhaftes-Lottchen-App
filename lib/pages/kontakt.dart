import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/variables.dart';
import 'package:app/widgets.dart';

class KontaktTab extends StatelessWidget {
  const KontaktTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costomAppBar(
          "Kontakt", true, textStyle(24, FontWeight.w500, Colors.black)),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    "Das sind Wir:",
                    style: textStyle(24, FontWeight.bold, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/dasSindWir.jpg"))),
                ),
                SimpleDialog(
                  title: Text(
                    "Wir sind Diana und Jessica, die beiden Tagesmütter der Kindertagespflege \"Zauberhaftes Lottchen\".\n Wir haben beide mehrjährige Erfahrung in der Kinderbetreuung und begleiten ihr Kind liebevoll und individuell durch den Tag.\n",
                    style: textStyle(21, FontWeight.w500, Colors.black),
                  ),
                  elevation: 3,
                  backgroundColor: Colors.yellow[200],
                ),
                Text(
                  "Adresse und Öffnungszeiten:",
                  style: textStyle(24, FontWeight.bold, Colors.black),
                ),
                SimpleDialog(
                  backgroundColor: Colors.lightGreen[100],
                  elevation: 3,
                  title: const Text(
                      "Adresse:\n\nDiana Malerz & Jessica Krischek\nKindertagespflege \"Zauberhaftes Lottchen\"\nVluyner Platz 2a\n47506 Neukirchen-Vluyn\n\n\nÖffnungszeiten:\n\nMonatag:  07:00 - 16:00 Uhr\nDienstag:  07:00 - 16:00 Uhr\nMittwoch:  07:00 - 16:00 Uhr\nDonnerstag:  07:00 - 16:00 Uhr\nFreitag:  07:00 - 16:00 Uhr\n"),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 3,
                      ),
                      FloatingActionButton(
                          child: const Icon(Icons.phone),
                          onPressed: () async {
                            if (!await launchUrl(tel,
                                mode: LaunchMode.externalApplication)) {
                              throw '$tel konnte nicht angerufen werden';
                            }
                          }),
                      const Spacer(),
                      FloatingActionButton(
                          child: const Icon(Icons.mail),
                          onPressed: () async {
                            if (!await launchUrl(mail,
                                mode: LaunchMode.externalApplication)) {
                              throw 'Es konnte kein E-Mail an $mail gesendet werden';
                            }
                          }),
                      const Spacer(),
                      FloatingActionButton(
                        onPressed: () async {
                          if (!await launchUrl(whatsapp,
                              mode: LaunchMode.externalApplication)) {
                            throw 'Whatsapp konnte nicht geöffnet werden';
                          }
                        },
                        child: const Icon(Icons.whatsapp),
                      ),
                      const Spacer(),
                      FloatingActionButton(
                        onPressed: () async {
                          if (!await launchUrl(facebook,
                              mode: LaunchMode.externalApplication)) {
                            throw 'Facebook konnte nicht geöffnet werden';
                          }
                        },
                        child: const Icon(Icons.facebook),
                      ),
                      const Spacer(),
                      FloatingActionButton(
                          child: const CircleAvatar(
                              foregroundImage:
                                  AssetImage("assets/google_logo.png")),
                          onPressed: () async {
                            if (!await launchUrl(google,
                                mode: LaunchMode.externalApplication)) {
                              throw 'Google konnte nicht aufgerufen werden';
                            }
                          }),
                      const Spacer(),
                      FloatingActionButton(
                        onPressed: () async {
                          if (!await launchUrl(maps,
                              mode: LaunchMode.externalApplication)) {
                            throw 'Google Maps konnte nicht aufgerufen werden';
                          }
                        },
                        child: const CircleAvatar(
                            foregroundImage:
                                AssetImage("assets/googlemaps.jpg")),
                      ),
                      const Spacer(
                        flex: 3,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
