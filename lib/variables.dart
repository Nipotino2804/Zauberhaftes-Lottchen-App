library global;

import 'package:flutter/material.dart';
import 'package:zhl_app/main.dart';

String title = "Zauberhaftes Lottchen";
int currentIndex = 0;
List currentSite1 = [
  HomeTab(),
  AboutUsTab(),
  OpenTimeTab(),
  RoomsTab(),
  MoreTab()
];
final Uri eat =
    Uri.parse("http://beta.zauberhaftes-lottchen.de/essensplan.jpg");
final Uri tel = Uri.parse("tel:+4915736222471");
final Uri whatsapp = Uri.parse("https://wa.me/+4915736222471");
final Uri mail = Uri.parse("mailto:diana@zauberhaftes-lottchen.de");
final Uri google = Uri.parse(
    "https://local.google.com/place?id=4308525716937514437&use=srp&_ga=2.158070266.1595686935.1621767996-1247022315.1621412540");
final Uri maps = Uri.parse(
    "https://maps.google.com/maps?cid=4308525716937514437&_ga=2.124377418.1595686935.1621767996-1247022315.1621412540");
