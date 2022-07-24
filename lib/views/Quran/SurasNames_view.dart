import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/Quran/SurasNames_view_model.dart.dart';
import 'package:new_islam/views/Quran/Ayat_View.dart';
import 'package:new_islam/widgets/common_widgets.dart';
import 'package:provider/provider.dart';

class Quarn extends StatefulWidget {
  const Quarn({Key? key}) : super(key: key);

  @override
  State<Quarn> createState() => _QuarnState();
}

class _QuarnState extends State<Quarn> {
  @override
  Widget build(BuildContext context) {
    SurasNames namesProvider = Provider.of(context);
    List<String> names = namesProvider.suraName;
    return Column(
      children: [
        // mus7f img
        CommonWidgets.screenLogo('assets/images/qur2an_screen_logo.png'),
        //sura name text
        CommonWidgets.tableName(context, 'اسم السورة'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .45,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuranDetails(names[index], index + 1)));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    names[index],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: names.length,
          ),
        ),
      ],
    );
  }
}
