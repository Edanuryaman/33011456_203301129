
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/kapasite.dart';
import '../altbar/renkler.dart';
import '../altbar/sepet.dart';
import '../altbar/textdepo.dart';
import '../altbar/textrenkler.dart';

class TelApple extends StatefulWidget {
  @override
  State<TelApple> createState() => _State();
}

class _State extends State<TelApple> {
  Color ? selectedColor = Color(0xFF9575CD) ;
  int ? selectedcapasity = 64;
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
                    geriBaslik(title: "Apple iPhone 12 Pro Max", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/tapple2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Color(0xFF9575CD),
                                  selected: selectedColor == Color(0xFF9575CD),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFF9575CD);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFF283593),
                                  selected: selectedColor == Color(0xFF283593),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFF283593);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFB9F6CA),
                                  selected: selectedColor == Color(0xFFB9F6CA),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFB9F6CA);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFC62828),
                                  selected: selectedColor == Color(0xFFC62828),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFC62828);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFEEEEEE),
                                  selected: selectedColor == Color(0xFFEEEEEE),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFEEEEEE);
                                    });
                                  }),
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
                                  kap: 64,
                                  selected: selectedcapasity == 64,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 64;
                                    });
                                  }),
                              kapasite(
                                  kap: 128,
                                  selected: selectedcapasity == 128,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 128;
                                    });
                                  }),
                              kapasite(
                                  kap: 256,
                                  selected: selectedcapasity == 256,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 256;
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
