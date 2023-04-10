
import 'package:flutter/material.dart';

import '../altbar/geribaslik.dart';
import '../altbar/sepet.dart';

class Klavye extends StatefulWidget {
  @override
  State<Klavye> createState() => _State();
}

class _State extends State<Klavye> {
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
                    geriBaslik(title: "Işıklı Klavye", context: context),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 150),
                          Image.asset("images/aksesuarklavye2.png"),
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
