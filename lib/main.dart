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
                icon: Icon(Icons.people_alt_outlined),
                activeIcon: Icon(Icons.people_alt),
                label: "Das sind Wir"),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined),
                activeIcon: Icon(Icons.map),
                label: "Adresse & Öffnungszeiten"),
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
              decoration: BoxDecoration(
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

class AboutUsTab extends StatelessWidget {
  const AboutUsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costomAppBar(
          "Das sind Wir", true, textStyle(24, FontWeight.w500, Colors.black)),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/dasSindWir.jpg"))),
                ),
                SimpleDialog(
                  title: Text(
                    "Wir sind Diana und Jessica, die beiden Tagesmütter der Kindertagespflege \"Zauberhaftes Lottchen\". Wir haben beide mehrjährige erfahrung in der Kinderbetreuung und begleiteung ihre Kinder liebevoll und individuell durch den Altag im Zauberhaften Lottchen.\n",
                    style: textStyle(21, FontWeight.w500, Colors.black),
                  ),
                  elevation: 3,
                  backgroundColor: Colors.yellow[200],
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 3,
                      ),
                      FloatingActionButton(
                          child: Icon(Icons.phone),
                          onPressed: () async {
                            if (!await launchUrl(tel,
                                mode: LaunchMode.externalApplication)) {
                              throw '$tel konnte nicht angerufen werden';
                            }
                          }),
                      Spacer(),
                      FloatingActionButton(
                          child: Icon(Icons.mail),
                          onPressed: () async {
                            if (!await launchUrl(mail,
                                mode: LaunchMode.externalApplication)) {
                              throw 'Es konnte kein E-Mail an $mail gesendet werden';
                            }
                          }),
                      Spacer(),
                      FloatingActionButton(
                        onPressed: () async {
                          if (!await launchUrl(whatsapp,
                              mode: LaunchMode.externalApplication)) {
                            throw 'Whatsapp konnte nicht geöffnet werden';
                          }
                        },
                        child: Icon(Icons.whatsapp),
                      ),
                      Spacer(
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

class OpenTimeTab extends StatelessWidget {
  const OpenTimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: costomAppBar("Adresse & Öffnungszeiten", true,
          textStyle(24, FontWeight.w500, Colors.black)),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SimpleDialog(
                backgroundColor: Colors.lightGreen[100],
                elevation: 3,
                title: Text(
                    "Adresse:\n\nDiana Malerz & Jessica Krischek\nKindertagespflege \"Zauberhaftes Lottchen\"\nVluyner Platz 2a\n47506 Neukirchen-Vluyn\n\n\nÖffnungszeiten:\n\nMonatag:  07:00 - 16:00 Uhr\nDienstag:  07:00 - 16:00 Uhr\nMittwoch:  07:00 - 16:00 Uhr\nDonnerstag:  07:00 - 16:00 Uhr\nFreitag:  07:00 - 16:00 Uhr\n"),
              ),
              Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  FloatingActionButton(
                      child: CircleAvatar(
                          foregroundImage:
                              AssetImage("assets/google_logo.png")),
                      onPressed: () async {
                        if (!await launchUrl(google,
                            mode: LaunchMode.externalApplication)) {
                          throw 'Google konnte nicht aufgerufen werden';
                        }
                      }),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () async {
                      if (!await launchUrl(maps,
                          mode: LaunchMode.externalApplication)) {
                        throw 'Google Maps konnte nicht aufgerufen werden';
                      }
                    },
                    child: CircleAvatar(
                        foregroundImage: AssetImage("assets/googlemaps.jpg")),
                  ),
                  Spacer(
                    flex: 3,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          );
        },
      ),
    );
  }
}

class RoomsTab extends StatefulWidget {
  const RoomsTab({super.key});

  @override
  State<RoomsTab> createState() => _RoomsTabState();
}

class _RoomsTabState extends State<RoomsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: costomAppBar("Räumlichkeiten", true,
            textStyle(24, FontWeight.w500, Colors.black)),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Außenbereich:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/01-outsite/01.jpg",
                              width: MediaQuery.of(context).size.width * 1.00,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/01-outsite/02.jpg",
                              width: MediaQuery.of(context).size.width * 1.00,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/01-outsite/03.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Eingangsbereich:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/02-coomIn/01.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/02-coomIn/02.jpg",
                              width: MediaQuery.of(context).size.width * 1.00,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Küche:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/kueche.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Gäste WC:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/guste_toilette.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Wickelbereich:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/wikelBereich.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Essensraum:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/eatRoom.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: Text(
                    "Spielzimmer:",
                    style: textStyle(24, FontWeight.w600, Colors.black),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/rooms/playRoom/01.jpg",
                              width: MediaQuery.of(context).size.width * 1.0,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/02.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/03.jpg",
                              width: MediaQuery.of(context).size.width * 1.0,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/04.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/05.jpg",
                              width: MediaQuery.of(context).size.width * 1.0,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/06.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/07.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                            VerticalDivider(),
                            Image.asset(
                              "assets/rooms/playRoom/08.jpg",
                              width: MediaQuery.of(context).size.width * 0.55,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: costomAppBar(
            "Mehr", true, textStyle(14, FontWeight.w500, Colors.black)),
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
                "Zum Downloaden auf das Bild klicken",
                style: textStyle(18, FontWeight.normal, Colors.black),
              )
            ],
          ),
        ));
  }
}
