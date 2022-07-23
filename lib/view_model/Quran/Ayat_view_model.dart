import 'package:flutter/cupertino.dart';
import 'package:new_islam/services/QuranAyat.dart';

class Ayat extends ChangeNotifier {
  String suraAyat = '';
  bool isLoading = false;
  Ayat(int suraNumber) {
    if (suraNumber != 0) {
      getAyat(suraNumber);
    }
  }
  chaneIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  getAyat(suraNumber) async {
    chaneIsLoading(true);
    suraAyat = await AyatServices.readSura(suraNumber);
    print(suraAyat);

    chaneIsLoading(false);
  }
}
