import 'package:flutter/cupertino.dart';

Widget kapasite(
    {required int kap,
    required bool selected,
    required void Function() ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        "$kap Gb",
        style: TextStyle(
            color: Color(selected ? 0xFF0001FC : 0xFFA7A9BE), fontSize: 16),
      ),
    ),
  );
}
