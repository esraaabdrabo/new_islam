import 'package:flutter/material.dart';

import '../myThemeData.dart';

class CommonWidgets {
  static Widget screenLogo(String path) {
    return Image.asset(path);
  }

  static tableName(BuildContext context, String tableTitle) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
              color: MyThemeData.primaryColor,
              width: MediaQuery.of(context).size.width * .005)),
      child: Text(
        tableTitle,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
