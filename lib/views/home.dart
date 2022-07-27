import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/Quran/SurasNames_view_model.dart.dart';
import 'package:new_islam/views/Hadeth/hadeths_names_view.dart';
import 'package:new_islam/views/Quran/SurasNames_view.dart';
import 'package:new_islam/views/radio_view.dart';
import 'package:new_islam/views/sebha_view.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottomNav(),
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

              selectedPageIndex == 0
                  ? const Hadeth()
                  : selectedPageIndex == 1
                      ? const Radioo()
                      : selectedPageIndex == 2
                          ? ChangeNotifierProvider(
                              create: (context) => SurasNames(),
                              builder: (context, child) {
                                return const Quarn();
                              })
                          : const Sebha(),
            ],
          ),
        ));
  }

  Widget bottomNav() {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: MyThemeData.primaryColor),
      child: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          onTap: (index) {
            selectedPageIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Hadeth',
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
            ),
            BottomNavigationBarItem(
              label: 'Radio',
              icon: const ImageIcon(AssetImage('assets/images/icon_radio.png')),
            ),
            BottomNavigationBarItem(
              label: 'Quarn',
              icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
            ),
            BottomNavigationBarItem(
              label: 'Sebha',
              icon: const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
            )
          ]),
    );
  }
}
