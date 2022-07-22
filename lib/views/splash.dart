import 'package:flutter/material.dart';
import 'home.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'))),
    );
  }

  navigateToHome(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 2),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const home()))));
  }
}
