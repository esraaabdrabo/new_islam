import 'package:flutter/cupertino.dart';
import 'package:new_islam/model/radio_model.dart';
import 'package:new_islam/services/radio_services.dart';

class RadioProvider extends ChangeNotifier {
  bool loading = false;
  String errorMessage = '';
  List<RadioInfo> radios = [];

  RadioProvider() {
    getRadios();
  }
  changeLoading(bool value) {
    loading = value;

    notifyListeners();
  }

  getRadios() async {
    changeLoading(true);
    var respnse = await RadioServices.getRadios();
    if (respnse is Radios) {
      radios = respnse.radios;
    } else {
      errorMessage = 'حدث خطأ اعد المحاولة';
    }
    changeLoading(false);
  }
}
