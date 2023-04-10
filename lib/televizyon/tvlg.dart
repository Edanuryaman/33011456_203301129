import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/inc.dart';
import '../altbar/sepet.dart';
import '../altbar/textboyut.dart';

class TvLg extends StatefulWidget {
  @override
  State<TvLg> createState() => _State();
}

class _State extends State<TvLg> {
  int? selectedinc=49;
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
                    geriBaslik(title: "LG 55SM8000PLA", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Image.asset("images/tvlg2.png"),

                          SizedBox(height: 50),
                          //KAPASİTE
                          textboyut(),
                          SizedBox(height: 40),
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
