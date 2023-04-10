import 'package:enyticaret/altbar/kapasite.dart';
import 'package:enyticaret/altbar/sepet.dart';
import 'package:enyticaret/altbar/textdepo.dart';
import 'package:enyticaret/altbar/textrenkler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/renkler.dart';

class BilApple extends StatefulWidget {
  @override
  State<BilApple> createState() => _State();
}

class _State extends State<BilApple> {
  Color? selectedColor = Color(0xFFFFAB91);
  int? selectedcapasity = 500;

  Type get color => Null;

  Object? get kap => null;
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
                        title: "Apple Macbook Air 13' ", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/bapple2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Color(0xFFFFAB91),
                                  selected: selectedColor == Color(0xFFFFAB91),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFFFAB91);
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
                              renkler(
                                  color: Color(0xFF9C9C9C),
                                  selected: selectedColor == Color(0xFF9C9C9C),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFF9C9C9C);
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
                                  kap: 500,
                                  selected: selectedcapasity == 500,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 500;
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
