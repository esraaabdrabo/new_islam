import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/Quran/Ayat_view_model.dart';
import 'package:new_islam/widgets/common_widgets.dart';
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
                CommonWidgets.islamiText(context),
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(0, 15),
                            color: Color.fromARGB(29, 2, 2, 2))
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView(children: [
                    Column(children: [
                      CommonWidgets.suraOrHadethTitle(context, suraName),
                      //line
                      CommonWidgets.lineUnderTitle(context),
                      const Text('بسم الله الرحمن الرحيم'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      //ayat
                      CommonWidgets.ayatOrHadethContent(
                          context, ayatProvider.suraAyat),
                    ]),
                  ]),
                )
              ],
            ),
          ));
        });
  }
}
