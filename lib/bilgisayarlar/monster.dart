
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/kapasite.dart';
import '../altbar/renkler.dart';
import '../altbar/sepet.dart';
import '../altbar/textdepo.dart';
import '../altbar/textrenkler.dart';

class BilMonster extends StatefulWidget {
  @override
  State<BilMonster> createState() => _State();
}

class _State extends State<BilMonster> {
  int? selectedcapasity= 512;
  Color? selectedColor = Colors.black;
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
                    geriBaslik(title: "Monster Abra A5 V17.1", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/bmonster2.png"),
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
                              renkler(
                                  color: Color(0xFFDDDDDD),
                                  selected: selectedColor == Color(0xFFDDDDDD),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFDDDDDD);
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
                                  kap: 512,
                                  selected: selectedcapasity == 512,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 512;
                                    });
                                  }),
                              kapasite(
                                  kap: 1024,
                                  selected: selectedcapasity == 1024,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 1024;
                                    });
                                  }),
                              kapasite(
                                  kap: 2048,
                                  selected: selectedcapasity == 2048,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 2048;
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
