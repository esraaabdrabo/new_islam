import 'package:flutter/material.dart';
import 'package:new_islam/myThemeData.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyThemeData.primaryColor,
          title: const Text('Islami'),
          centerTitle: true,
        ),
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(canvasColor: MyThemeData.primaryColor),
          child: BottomNavigationBar(items: const [
            const BottomNavigationBarItem(
              label: 'Hadeth',
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
            ),
            const BottomNavigationBarItem(
              label: 'Radio',
              icon: const ImageIcon(AssetImage('assets/images/icon_radio.png')),
            ),
            const BottomNavigationBarItem(
              label: 'Quarn',
              icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
            ),
            const BottomNavigationBarItem(
              label: 'Sebha',
              icon: const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
            )
          ]),
        ),
        body: Container(
          child: Image.asset('assets/images/default_bg.png'),
        ));
  }
}
