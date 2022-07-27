import 'package:flutter/cupertino.dart';
import 'package:new_islam/services/QuranAyat_services.dart';

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

    List<String> ayatList = suraAyat.split('\n');
    suraAyat = '';
    for (int i = 0; i < ayatList.length - 1; i++) {
      if (ayatList[i].trim() == '') continue;
      suraAyat = suraAyat + ayatList[i] + '(${i + 1})';
    }
    chaneIsLoading(false);
  }
}
