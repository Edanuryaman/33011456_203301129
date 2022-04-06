import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/inc.dart';
import '../altbar/sepet.dart';
import '../altbar/textboyut.dart';

class TvSamsung extends StatefulWidget {
  @override
  State<TvSamsung> createState() => _State();
}

class _State extends State<TvSamsung> {
  int ?  selectedinc = 55;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    geriBaslik(title: "Samsung UE-55RU7300", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Image.asset("images/tvsamsung2.png"),

                          SizedBox(height: 50),
                          //KAPASİTE
                          textboyut(),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              boyut(
                                  inc: 55,
                                  selected: selectedinc == 55,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 55;
                                    });
                                  }),
                            ],
                          ),

                          //SEPETE EKLE
                          SizedBox(height: 60),
                          sepet(),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
