import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
