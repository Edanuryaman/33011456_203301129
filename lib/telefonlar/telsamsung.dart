import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/kapasite.dart';
import '../altbar/renkler.dart';
import '../altbar/sepet.dart';
import '../altbar/textdepo.dart';
import '../altbar/textrenkler.dart';

class TelSamsung extends StatefulWidget {
  @override
  State<TelSamsung> createState() => _State();
}

class _State extends State<TelSamsung> {
  Color? selectedColor = Color(0xFFFAFAFA);
  int? selectedcapasity = 128;
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
                    geriBaslik(title: "Samsung Galaksi S21", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/tsamsung2.png"),
                          SizedBox(height: 30),
                          //RENKLER
                          textrenk(),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              renkler(
                                  color: Color(0xFFFAFAFA),
                                  selected: selectedColor == Color(0xFFFAFAFA),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFFAFAFA);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFF37474F),
                                  selected: selectedColor == Color(0xFF37474F),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFF37474F);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFD1C4E9),
                                  selected: selectedColor == Color(0xFFD1C4E9),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFD1C4E9);
                                    });
                                  }),
                              renkler(
                                  color: Color(0xFFCDDC39),
                                  selected: selectedColor == Color(0xFFCDDC39),
                                  ontap: () {
                                    setState(() {
                                      selectedColor = Color(0xFFCDDC39);
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
