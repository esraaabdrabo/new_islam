import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';

class QuranDetails extends StatelessWidget {
  String suraName;

  QuranDetails(this.suraName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              //sura name
              Text(
                suraName,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
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
                child: const Text(
                  'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ الرَّحْمَنِ الرَّحِيمِ مَالِكِ يَوْمِ الدِّينِ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                ),
              ),
            ]),
          )
        ],
      ),
    ));
  }
}
