import 'package:enyticaret/altbar/geribaslik.dart';
import 'package:enyticaret/telefonlar/telapple.dart';
import 'package:enyticaret/telefonlar/teloppo.dart';
import 'package:enyticaret/telefonlar/telsamsung.dart';
import 'package:enyticaret/telefonlar/telxiaomi.dart';
import 'package:flutter/material.dart';

import '../altbar/icerik.dart';

class Telefonlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Telefonlar", context: context),
                  //içerik
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icerik(
                          baslik: "Apple",
                          foto: "images/tapple.png",
                          fiyat: "22499 TL",widget:TelApple() ,context: context),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                          baslik: "Oppo",
                          foto: "images/toppo.png",
                          fiyat: "6999 TL",widget:TelOppo() ,context: context),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      icerik(
                          baslik: "Samsung",
                          foto: "images/tsamsung.png",
                          fiyat: "12000 TL",widget:TelSamsung() ,context: context),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                          baslik: "Xiaomi",
                          foto: "images/txaomi.png",
                          fiyat: "11500 TL",widget:TelXiaomi() ,context: context),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
