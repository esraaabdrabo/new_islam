import 'package:flutter/cupertino.dart';

class SebhaProvider extends ChangeNotifier {
  int tasbehNum = 0;

  double sebhaAngle = 0.0;
  List<String> athkar = [
    'سبحان الله',
    'الله اكبر',
    'استغفر الله',
    'الحمد لله',
    'لا اله الا الله'
  ];
  int athkarIndex = 0;

//first check if 33 is done
//true => counter = 0 , angle = 0 , chane current thkr
//false => increase counter , angle
  complete33tasbha(BuildContext context) {
    if (tasbehNum == 33) {
      tasbehNum = 0;
      sebhaAngle = 0;
      showNextAthkar();
      notifyListeners();
    } else {
      incrTasbehNum(context);
    }
  }

  incrTasbehNum(BuildContext context) {
    rotateSebha(context);
    tasbehNum++;
    notifyListeners();
  }

  rotateSebha(BuildContext context) {
    var incrAngle = MediaQuery.of(context).size.width * .0005;
    sebhaAngle = sebhaAngle + incrAngle;
  }

  showNextAthkar() {
    if (athkarIndex == athkar.length - 1) {
      athkarIndex = 0;
    } else {
      athkarIndex++;
    }
  }
}
