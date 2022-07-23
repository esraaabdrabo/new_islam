import 'package:flutter/services.dart';

class AyatServices {
  static Future<String> readSura(int suraNumber) async {
    String ayat = await rootBundle.loadString('assets/quran/$suraNumber.txt');
    return ayat;
  }
}
