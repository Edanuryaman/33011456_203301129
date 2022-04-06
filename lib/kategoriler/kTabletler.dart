import 'package:enyticaret/altbar/geribaslik.dart';
import 'package:enyticaret/tabletler/tabapple.dart';
import 'package:enyticaret/tabletler/tabhuawei.dart';
import 'package:enyticaret/tabletler/tabsamsung.dart';
import 'package:enyticaret/tabletler/tabxiaomi.dart';
import 'package:flutter/material.dart';

import '../altbar/icerik.dart';

class Tabletler extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Tabletler", context: context),
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
                          foto: "images/tabapple.png",
                          fiyat: "21500 TL", widget: TabApple(), context: context),
                      SizedBox(
                        width: 30,
                      ),

                      icerik(
                          baslik: "Xiaomi",
                          foto: "images/tabxiaomi.png",
                          fiyat: "6500 TL", widget:TabXiaomi() , context: context),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      icerik(
                          baslik: "Huawei",
                          foto: "images/tabhuawei.png",
                          fiyat: "2000 TL", widget:TabHuawei() , context: context),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                          baslik: "Samsung",
                          foto: "images/tabsamsung.png",
                          fiyat: "2650 TL", widget: TabSamsung(), context: context),
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
