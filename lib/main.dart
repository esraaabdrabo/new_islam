import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: MyThemeData.primaryColor,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: MyThemeData.accentColor)),
      home: const splash(),
    );
  }
}
