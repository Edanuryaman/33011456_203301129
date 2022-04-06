import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/inc.dart';
import '../altbar/sepet.dart';
import '../altbar/textboyut.dart';

class TvPhilips extends StatefulWidget {
  @override
  State<TvPhilips> createState() => _State();
}

class _State extends State<TvPhilips> {
  int selectedinc = 49;
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
                    geriBaslik(title: "Philips 70PUS8506", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Image.asset("images/tvphilip2.png"),

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
                                  inc: 58,
                                  selected: selectedinc == 58,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 58;
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
                              boyut(
                                  inc: 70,
                                  selected: selectedinc == 70,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 70;
                                    });
                                  }),
                              boyut(
                                  inc: 75,
                                  selected: selectedinc == 75,
                                  ontap: () {
                                    setState(() {
                                      selectedinc = 75;
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
