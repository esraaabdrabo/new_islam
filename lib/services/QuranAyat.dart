import 'package:flutter/services.dart';

class AyatServices {
  static readSura(int suraNumber) async {
    String ayat = await rootBundle.loadString('assets/quran/$suraNumber.txt');
    return ayat;
  }
}
