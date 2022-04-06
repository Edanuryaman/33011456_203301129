// ignore: avoid_web_libraries_in_flutter
import 'dart:ui';

import 'package:enyticaret/anasayfadakiler/favoriler.dart';
import 'package:enyticaret/anasayfadakiler/hediyeler.dart';
import 'package:enyticaret/anasayfadakiler/kategoriler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp() ,
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  children: [
                    //anasayfa yazısı
                    anasayfa(),
                    //row1
                    row1(),
                    Padding(
                      padding: EdgeInsets.only(top: 48),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          butonlar(
                            text: 'Kategoriler',
                            icon: Icons.menu,
                            widget: Kategoriler(),
                            context: context,
                          ),
                          butonlar(
                            text: 'Favoriler',
                            icon: Icons.star_border_outlined,
                            widget: Favoriler(),
                            context: context,
                          ),
                          butonlar(
                            text: 'Sepetim',
                            icon: Icons.shopping_cart,
                            widget: Sepetim(),
                            context: context,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),

                    Text(
                      "Fırsatlar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                    SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        firsatlar(
                            baslik: "%50 İndirim",
                            foto: "images/samsung.png",
                            altyazi: "Akıllı Telefonlar"),
                        firsatlar(
                            baslik: "%30 İndirim",
                            foto: "images/applee.png",
                            altyazi: "Bilgisayarlar"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        firsatlar(
                            baslik: "%40 İndirim",
                            foto: "images/tablet.png",
                            altyazi: "Tabletler"),
                        firsatlar(
                            baslik: "%25 İndirim",
                            foto: "images/aksesuar.png",
                            altyazi: "Aksesuarlar")
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget anasayfa() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "ANA SAYFA",
      style: TextStyle(
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget row1() {
  return Padding(
    padding: EdgeInsets.only(top: 24),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AirPods",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                "2999 TL",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset(
            'images/airp.png',
            width: 70,
            height: 80,
          )
        ],
      ),
    ),
  );
}

Widget firsatlar(
    {required String baslik, required String foto, required String altyazi}) {
  return Container(
    width: 175,
    padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 21),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0xFFE0ECF8)),
          child: Text(baslik,
              style: TextStyle(color: Color(0xFF0001FC), fontSize: 12)),
        ),
        SizedBox(
          height: 22,
        ),
        Center(
            child: Image.asset(
          foto,
          height: 85,
        )),
        SizedBox(
          height: 22,
        ),
        Center(
          child: Text(
            altyazi,
            style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)),
          ),
        ),
      ],
    ),
  );
}

Widget butonlar(
    {required String text,
    required IconData icon,
    required Widget widget,
    required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widget));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
            size: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF1F53E4),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
