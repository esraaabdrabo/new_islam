import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:new_islam/model/radio_model.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/radio_view_model.dart';
import 'package:provider/provider.dart';

class Radioo extends StatelessWidget {
  const Radioo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => RadioProvider()),
        builder: (context, child) {
          RadioProvider provider = Provider.of(context);
          List<RadioInfo> radios = provider.radios;
          int index = provider.currentRadio;
          return provider.loading
              ? const Expanded(
                  child: Center(child: CircularProgressIndicator()))
              : SizedBox(
                  height: MediaQuery.of(context).size.height * .8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/radio_image.png'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .7,
                          child: Text(
                            radios[index].name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              letterSpacing: 5,
                            ),
                          )),

                      //play icon nad next
                      Container(
                        alignment: Alignment.topCenter,
                        height: MediaQuery.of(context).size.height * .1,
                        width: MediaQuery.of(context).size.width * .7,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: MyThemeData.primaryColor.withAlpha(100),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //perivous icon
                            IconButton(
                                onPressed: () {
                                  provider.showPerivousRadio();
                                },
                                icon: const Icon(
                                  Icons.arrow_left,
                                  size: 50,
                                )),

                            //play btn
                            !provider.isPlaying
                                ? IconButton(
                                    onPressed: () {
                                      provider.play();
                                    },
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      size: 50,
                                      color: Colors.blue,
                                    ))
                                :
                                //stop btn
                                IconButton(
                                    onPressed: () {
                                      provider.stop();
                                    },
                                    icon: const Icon(
                                      Icons.stop,
                                      size: 50,
                                      color: Colors.red,
                                    )),

                            //next radio
                            IconButton(
                                onPressed: () {
                                  provider.showNextRadio();
                                },
                                icon: const Icon(
                                  Icons.arrow_right,
                                  size: 50,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                );
        });
  }
}
