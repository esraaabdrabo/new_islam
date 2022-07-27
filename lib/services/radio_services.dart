import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/radio_model.dart';

class RadioServices {
  static getRadios() async {
    String baseUrl = 'https://api.mp3quran.net/radios/radio_arabic.json';
    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      return Radios.fromJson(jsonDecode(response.body));
    } else {
      return response.statusCode;
    }
  }
}
