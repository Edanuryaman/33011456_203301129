import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/kapasite.dart';
import '../altbar/renkler.dart';
import '../altbar/sepet.dart';
import '../altbar/textdepo.dart';
import '../altbar/textrenkler.dart';

class TabSamsung extends StatefulWidget {
  @override
  State<TabSamsung> createState() => _State();
}

class _State extends State<TabSamsung> {
  Color? selectedColor = Colors.black;
  int? selectedcapasity = 32;
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
                    geriBaslik(
                        title: "Samsung Galaxy Tab A7", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/tabsamsung2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Colors.black,
                                  selected: selectedColor == Colors.black,
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Colors.black;
                                    });
                                  }),
                            ],
                          ),
                          SizedBox(height: 32),
                          //KAPASİTE
                          textdepo(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              kapasite(
                                  kap: 32,
                                  selected: selectedcapasity == 32,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 32;
                                    });
                                  }),
                            ],
                          ),

                          //SEPETE EKLE
                          SizedBox(height: 32),
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
