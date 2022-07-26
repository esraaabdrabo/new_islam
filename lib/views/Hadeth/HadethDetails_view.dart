import 'package:flutter/material.dart';
import 'package:new_islam/view_model/Hadeth_view_model.dart';
import 'package:provider/provider.dart';

import '../../widgets/common_widgets.dart';

class HadethDetails extends StatelessWidget {
  String hadethNum;

  HadethDetails(this.hadethNum, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => HadethProvider(hadethNum)),
      builder: ((context, child) {
        HadethProvider provider = Provider.of(context);
        String hadeth = provider.hadeth;
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
                    CommonWidgets.suraOrHadethTitle(
                        context, provider.hadethTitle),
                    //line
                    CommonWidgets.lineUnderTitle(context),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    //ayat
                    CommonWidgets.ayatOrHadethContent(context, provider.hadeth),
                  ]),
                ]),
              )
            ],
          ),
        ));
      }),
    );
  }
}
