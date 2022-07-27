import 'package:flutter/services.dart';

class HadethsServices {
  static Future<String> getHadeth(String hadethNumber) async {
    String hadeth =
        await rootBundle.loadString('assets/hadeth/$hadethNumber.txt');
    return hadeth;
  }
}
