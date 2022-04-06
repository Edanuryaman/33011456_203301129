
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/kapasite.dart';
import '../altbar/renkler.dart';
import '../altbar/sepet.dart';
import '../altbar/textdepo.dart';
import '../altbar/textrenkler.dart';

class BilHuawei extends StatefulWidget {
  @override
  State<BilHuawei> createState() => _State();
}

class _State extends State<BilHuawei> {
  Color ? selectedColor = Colors.black ;

  int? selectedcapasity = 256 ;

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
                    geriBaslik(title: "Huawei Matebook D15", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset("images/bhuawei2.png"),
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
                                  kap: 256,
                                  selected: selectedcapasity == 256,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 256;
                                    });
                                  }),
                              kapasite(
                                  kap: 512,
                                  selected: selectedcapasity == 512,
                                  ontap: () {
                                    setState(() {
                                      selectedcapasity = 512;
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
                  ]),
            ),

        );


  }
}
