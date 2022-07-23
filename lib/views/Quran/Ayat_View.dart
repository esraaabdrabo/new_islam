import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/Quran/Ayat_view_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class QuranDetails extends StatelessWidget {
  String suraName;
  int suraNumber;
  QuranDetails(this.suraName, this.suraNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Ayat(suraNumber),
        builder: (context, child) {
          Ayat ayatProvider = Provider.of(context);

          return Scaffold(
              body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/default_bg.png'),
                    fit: BoxFit.fill)),
            child: Column(
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
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(140, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView(children: [
                    Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      //sura name
                      Text(
                        suraName,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w100),
                      ),
                      //line
                      Divider(
                        height: MediaQuery.of(context).size.height * .05,
                        endIndent: MediaQuery.of(context).size.height * .1,
                        indent: MediaQuery.of(context).size.height * .1,
                        color: MyThemeData.primaryColor,
                      ),
                      //ayat
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          ayatProvider.suraAyat,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w100),
                        ),
                      ),
                    ]),
                  ]),
                )
              ],
            ),
          ));
        });
  }
}
