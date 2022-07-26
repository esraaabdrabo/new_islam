import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'dart:math' as math;

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  var num = 0;
  var athkarIndex = 0;
  double sebhaAngle = 0.0;
  @override
  Widget build(BuildContext context) {
    List<String> athkar = ['سبحان الله', 'الله اكبر', 'استغفر الله'];

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        //head sebha
        Transform.rotate(
          angle: sebhaAngle,
          child: InkWell(
              onTap: () {
                var incrAngle = MediaQuery.of(context).size.width * .00048;
                sebhaAngle = sebhaAngle + incrAngle;
                num++;
                if (num == 34) {
                  num = 0;
                  if (athkarIndex == athkar.length - 1) {
                    //2 == 3-1
                    //index=0
                    athkarIndex = 0;
                    sebhaAngle = 0;
                  } else {
                    athkarIndex++;
                  }
                }
                setState(() {});
              },
              child: Column(children: [
                Transform.translate(
                    offset: Offset(0, MediaQuery.of(context).size.width * .08),
                    child: Image.asset('assets/images/head_sebha_logo.png')),
                Image.asset('assets/images/body_sebha_logo.png'), //body sebha
              ])),
        ),
        //number of tasbe7
        const Padding(
          padding: EdgeInsets.all(25),
          child: Text('عدد التسبيحات'),
        ),
        //click number
        Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: MyThemeData.primaryColor.withAlpha(150),
            ),
            child: Text(
              num.toString(),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        //tasbeha name
        Container(
            width: MediaQuery.of(context).size.width * .3,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: MyThemeData.primaryColor,
            ),
            child: Text(
              athkar[athkarIndex],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
