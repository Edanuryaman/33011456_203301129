import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget sepet(){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Color(0xFF1F53E4),
    ),
    child: Text(
      "Sepete Ekle",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600),
    ),
  );
}