import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/views/Quran/QuranDetails.dart';

class Quarn extends StatefulWidget {
  const Quarn({Key? key}) : super(key: key);

  @override
  State<Quarn> createState() => _QuarnState();
}

class _QuarnState extends State<Quarn> {
  @override
  Widget build(BuildContext context) {
    List<String> suraName = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];

    return Column(
      children: [
        // mus7f img
        Image.asset('assets/images/qur2an_screen_logo.png'),
        //sura name text
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: MyThemeData.primaryColor,
                  width: MediaQuery.of(context).size.width * .005)),
          child: const Text(
            'اسم السورة',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          child: ListView.builder(
              itemCount: suraName.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                QuranDetails(suraName[index])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      suraName[index],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
