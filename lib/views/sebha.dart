import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/sebha_view_model.dart';

import 'package:provider/provider.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SebhaProvider(),
        builder: (context, child) {
          SebhaProvider provider = Provider.of(context);

          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              //head sebha
              Transform.rotate(
                angle: provider.sebhaAngle,
                child: InkWell(
                    onTap: () {
                      provider.complete33tasbha(context);
                    },
                    child: Column(children: [
                      Transform.translate(
                          offset: Offset(
                              0, MediaQuery.of(context).size.width * .08),
                          child:
                              Image.asset('assets/images/head_sebha_logo.png')),
                      Image.asset(
                          'assets/images/body_sebha_logo.png'), //body sebha
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
                  child: Text(provider.tasbehNum.toString())),
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
                    provider.athkar[provider.athkarIndex],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          );
        });
  }
}
