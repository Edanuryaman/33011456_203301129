import 'package:enyticaret/altbar/geribaslik.dart';
import 'package:enyticaret/bilgisayarlar/acer.dart';
import 'package:enyticaret/bilgisayarlar/bilapple.dart';
import 'package:enyticaret/bilgisayarlar/huawei.dart';
import 'package:enyticaret/bilgisayarlar/monster.dart';
import 'package:flutter/material.dart';

import '../altbar/icerik.dart';

class Bilgisayarlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  geriBaslik(title: "Bilgisayarlar", context: context),
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icerik(
                          baslik: "Apple",
                          foto: "images/bapple.png",
                          fiyat: "18999 TL",widget: BilApple(),
                        context: context,),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                          baslik: "Monster",
                          foto: "images/bmonster.png",
                          fiyat: "15000 TL",widget: BilMonster(),
                        context: context,),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      icerik(
                          baslik: "Huawei ",
                          foto: "images/bhuawei.png",
                          fiyat: "13000 TL",widget: BilHuawei(),
                        context: context,),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                          baslik: "Acer ",
                          foto: "images/bacer.png",
                          fiyat: "12000 TL",widget: BilAcer(),
                        context: context,),
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
