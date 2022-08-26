library global;

import 'package:app/pages/home.dart';
import 'package:app/pages/kontakt.dart';
import 'package:app/pages/more.dart';
import 'package:app/pages/rooms.dart';

String title = "Zauberhaftes Lottchen";
int currentIndex = 0;
List currentSite1 = [
  const HomeTab(),
  const KontaktTab(),
  const RoomsTab(),
  const MoreTab()
];
final Uri eat =
    Uri.parse("https://zauberhaftes-lottchen.de/webapp/essensplan.jpg");
final Uri tel = Uri.parse("tel:+4915736222471");
final Uri whatsapp = Uri.parse("https://wa.me/+4915736222471");
final Uri mail = Uri.parse("mailto:diana@zauberhaftes-lottchen.de");
final Uri google = Uri.parse(
    "https://local.google.com/place?id=4308525716937514437&use=srp&_ga=2.158070266.1595686935.1621767996-1247022315.1621412540");
final Uri maps = Uri.parse(
    "https://maps.google.com/maps?cid=4308525716937514437&_ga=2.124377418.1595686935.1621767996-1247022315.1621412540");
final Uri facebook = Uri.parse(
    "https://de-de.facebook.com/pages/category/Local-Business/Kindertagespflege-Zauberhaftes-Lottchen-1001028009999630");
