
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/sepet.dart';

class Stant extends StatefulWidget {
  @override
  State<Stant> createState() => _State();
}

class _State extends State<Stant> {
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
                    geriBaslik(title: "Bilgisayar Standı", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Image.asset("images/aksesuar2.png"),
                          SizedBox(height: 80),
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
