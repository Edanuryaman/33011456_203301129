import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget icerik({required String baslik, required foto, required fiyat, required BuildContext context,required Widget widget}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widget));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16),
            )
          ]),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          SizedBox(height: 16),
          Image.asset(
            foto,
            width: 150,
            height: 120,
          ),
          SizedBox(height: 42),
          Column(
            children: [
              Text(
                baslik,
                style: TextStyle(
                    color: Color(0xFF0A1034),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(fiyat,style: TextStyle(
                  color: Color(0xFF0001FC),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),),
            ],
          )
        ],
      ),
    ),
  );
}
