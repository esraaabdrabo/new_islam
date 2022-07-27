import 'package:flutter/material.dart';
import 'package:new_islam/model/radio_model.dart';
import 'package:new_islam/myThemeData.dart';
import 'package:new_islam/view_model/radio_view_model.dart';
import 'package:provider/provider.dart';

class Radioo extends StatelessWidget {
  const Radioo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return ChangeNotifierProvider(
        create: ((context) => RadioProvider()),
        builder: (context, child) {
          RadioProvider provider = Provider.of(context);
          List<RadioInfo> radios = provider.radios;

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
                        height: MediaQuery.of(context).size.height * .15,
                        child: PageView.builder(
                            controller: controller,
                            onPageChanged: (index) {
                              print(index);
                            },
                            itemCount: radios.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      radios[index].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25,
                                          letterSpacing: 5,
                                          shadows: [
                                            BoxShadow(
                                                blurRadius: 3,
                                                color: MyThemeData.primaryColor)
                                          ]),
                                    ),
                                  ));
                            }),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      //play icon nad next
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Spacer(
                            flex: 2,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_left,
                                size: 50,
                              )),
                          const Spacer(
                            flex: 1,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 50,
                              )),
                          const Spacer(
                            flex: 1,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_right,
                                size: 50,
                              )),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      )
                    ],
                  ),
                );
        });
  }
}
