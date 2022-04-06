import 'package:enyticaret/altbar/inc.dart';
import 'package:enyticaret/altbar/textboyut.dart';
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/sepet.dart';

class TvArcelik extends StatefulWidget {
  @override
  State<TvArcelik> createState() => _State();
}

class _State extends State<TvArcelik> {
  int? selectedinc = 49;
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
                    geriBaslik(title: "Arçelik 9 Serisi", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Image.asset("images/tvarcelik2.png"),

                          SizedBox(height: 50),
                          //KAPASİTE
                          textboyut(),
                          SizedBox(height:40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              boyut(
                                  inc: 49,
                                  selected: selectedinc == 49,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 49;
                                    });
                                  }),
                              boyut(
                                  inc: 55,
                                  selected: selectedinc == 55,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 55;
                                    });
                                  }),
                              boyut(
                                  inc: 65,
                                  selected: selectedinc == 65,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 65;
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
