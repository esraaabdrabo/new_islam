import 'package:flutter/material.dart';

import '../../widgets/common_widgets.dart';
import 'HadethDetails_view.dart';

class Hadeth extends StatefulWidget {
  const Hadeth({Key? key}) : super(key: key);

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // hadeth img
        CommonWidgets.screenLogo('assets/images/hadeth_logo.png'),
        //ahadeth text
        CommonWidgets.tableName(context, 'الأحاديث'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HadethDetails('h${index + 1}')));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'الحديث رقم (${index + 1})',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: 50,
          ),
        ),
      ],
    );
  }
}
