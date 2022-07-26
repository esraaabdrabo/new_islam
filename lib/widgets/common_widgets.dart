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

  static islamiText(BuildContext context) {
    return Column(
      children: [
        // no app bar so we  want space before the islami text
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        //islami text
        const Text(
          'اسلامي',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
      ],
    );
  }

  static suraOrHadethTitle(BuildContext context, String title) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        //sura name
        Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }

  static lineUnderTitle(BuildContext context) {
    return Divider(
      height: MediaQuery.of(context).size.height * .05,
      endIndent: MediaQuery.of(context).size.height * .1,
      indent: MediaQuery.of(context).size.height * .1,
      color: MyThemeData.primaryColor,
    );
  }

  static ayatOrHadethContent(BuildContext context, String value) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width * .7,
      child: ListView(children: [
        Text(
          value,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
              letterSpacing: 2, fontSize: 15, fontWeight: FontWeight.w100),
        ),
      ]),
    );
  }
}
