import 'package:flutter/material.dart';
import 'package:new_islam/services/Hadeth.dart';

class HadethProvider extends ChangeNotifier {
  String hadeth = '';
  String hadethTitle = '';
  bool loading = false;
  HadethProvider(hadethNumber) {
    getHadeth(hadethNumber);
  }
  setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  getHadeth(String hadethNumber) async {
    setLoading(true);
    hadeth = await HadethsServices.getHadeth(hadethNumber);

    var newList = hadeth.split('\n');

    hadeth = '';
    // every file contain الحديث الاول
    //number of hadeth => title
    //hadeth body in newlist then in string
    for (int i = 1; i < newList.length; i++) {
      hadethTitle = newList[0];
      hadeth = hadeth + newList[i];
    }

    setLoading(false);
  }
}
