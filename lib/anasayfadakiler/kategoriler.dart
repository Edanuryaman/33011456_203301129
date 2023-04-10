
import 'package:enyticaret/altbar/geribaslik.dart';

import 'package:enyticaret/kategoriler/kAksesuarlar.dart';
import 'package:enyticaret/kategoriler/kBilgisayarlar.dart';
import 'package:enyticaret/kategoriler/kTabletler.dart';
import 'package:enyticaret/kategoriler/kTelefon.dart';
import 'package:enyticaret/kategoriler/kTelevizyon.dart';
import 'package:flutter/material.dart';

class Kategoriler extends StatelessWidget {
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
                  geriBaslik(title: "Kategoriler", context: context),

                  SizedBox(height: 16),
                  arasayfa(baslik: "Bilgisayarlar", widget: Bilgisayarlar(), context: context),
                  arasayfa(baslik: "Akıllı Telefonlar", widget: Telefonlar(), context: context),
                  arasayfa(baslik: "Tabletler", widget: Tabletler(), context: context),
                  arasayfa(baslik: "Televizyonlar", widget: Televizyonlar(), context: context),
                  arasayfa(baslik: "Aksesuarlar", widget: Aksesuarlar(), context: context),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

Widget arasayfa({
  required String baslik,
  required Widget widget,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widget));
    },
    child: Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 30 ),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4)),
          ]),
      child: Text(
        baslik,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A1034)),
      ),
    ),
  );
}
