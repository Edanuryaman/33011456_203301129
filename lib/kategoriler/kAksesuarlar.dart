import 'package:enyticaret/aksesuarlar/airpods.dart';
import 'package:enyticaret/aksesuarlar/hoparlor.dart';
import 'package:enyticaret/aksesuarlar/klavye.dart';
import 'package:enyticaret/aksesuarlar/stant.dart';

import 'package:enyticaret/altbar/geribaslik.dart';
import 'package:enyticaret/altbar/icerik.dart';
import 'package:enyticaret/bilgisayarlar/bilapple.dart';
import 'package:flutter/material.dart';

class Aksesuarlar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  geriBaslik(title: "Aksesuarlar", context: context),
                  SizedBox(
                    height: 18,
                  ),
                  //içerik
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icerik(
                        baslik: "Airpods",
                        foto: "images/airp.png",
                        fiyat: "2999 TL",
                        widget: Airpods(),
                        context: context,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                        baslik: "Hoparlör",
                        foto: "images/aksesuarspeaker.png",
                        fiyat: "2750 TL",
                        widget: Hoparlor(),
                        context: context,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      icerik(
                        baslik: "Bilgisayar standı",
                        foto: "images/aksesuar.png",
                        fiyat: "550 TL",
                        widget: Stant(),
                        context: context,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      icerik(
                        baslik: "Klavye",
                        foto: "images/aksesuarklavye.png",
                        fiyat: "100 TL",
                        widget: Klavye(),
                        context: context,
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
