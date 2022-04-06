
import 'package:flutter/cupertino.dart';

Widget renkler({required Color color, required bool selected, required void Function() ontap }) {
  return GestureDetector(
    onTap: ontap,
    child: Container(

      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Color(0xFF0001FC), width:selected ? 2: 0),
      ),
      width: 23,
      height: 23,
    ),
  );
}