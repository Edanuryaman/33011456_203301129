import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget geriBaslik({ required String title, required BuildContext context}){
 return Column(
   crossAxisAlignment: CrossAxisAlignment.start,
    children: [SizedBox(height: 29),
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        } ,
        child: Icon(Icons.arrow_back_ios_sharp,
            color: Colors.black, size: 26),
      ),
      SizedBox(height: 24),
      Text(title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black)),],);
}