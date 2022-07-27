import 'dart:convert';

class Radios {
  List<RadioInfo> radios = [];
  Radios.fromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap['radios'] is List<dynamic>) {
      List<dynamic> jsonList = jsonMap['radios']!;
      for (var radioObject in jsonList) {
        radios.add(RadioInfo.fromJson(radioObject));
      }
    }
  }
}

class RadioInfo {
  late String name;
  late String url;
  RadioInfo.fromJson(Map<String, dynamic> json) {
    if (json['name'] is String) name = utf8.decode(json['name'].codeUnits);
    if (json['radio_url'] is String) url = json['radio_url']!;
  }
}
