import 'package:flutter/material.dart';

class Radioo extends StatelessWidget {
  const Radioo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/radio_image.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          const Text(
            'اذاعة القران الكريم',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
  }
}
