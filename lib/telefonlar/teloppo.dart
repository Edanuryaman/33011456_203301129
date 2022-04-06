
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/kapasite.dart';
import '../altbar/renkler.dart';
import '../altbar/sepet.dart';
import '../altbar/textdepo.dart';
import '../altbar/textrenkler.dart';

class TelOppo extends StatefulWidget {
  @override
  State<TelOppo> createState() => _State();
}

class _State extends State<TelOppo> {
  Color? selectedColor =Color(0xFF9C27B0) ;
  int ? selectedcapasity = 128;

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
                    geriBaslik(title: "Oppo Reno 5", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/toppo2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Color(0xFF9C27B0),
                                  selected: selectedColor == Color(0xFF9C27B0),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFF9C27B0);
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
                                  kap: 128,
                                  selected: selectedcapasity == 128,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 128;
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
