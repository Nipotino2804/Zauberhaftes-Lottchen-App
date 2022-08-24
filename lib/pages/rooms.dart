import 'package:flutter/material.dart';
import 'package:zhl_app/widgets.dart';

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
