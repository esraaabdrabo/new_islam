import 'package:flutter/material.dart';
import 'package:new_islam/services/Hadeth.dart';

class Hadeth extends ChangeNotifier {
  String hadeth = '';
  bool loading = false;
  Hadeth(hadethNumber) {
    getHadeth(hadethNumber);
  }
  setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  getHadeth(String hadethNumber) async {
    setLoading(true);
    hadeth = await HadethsServices.getHadeth(hadethNumber);
    setLoading(false);
  }
}
