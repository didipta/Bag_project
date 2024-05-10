
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle TextSize(context){
  var width=MediaQuery.of(context).size.width;

  if(width<650){
   return TextStyle(

     color:Colors.black,
     fontSize: 20,
     fontWeight: FontWeight.w700,


   );
  }else{
    return TextStyle(
        color:Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w700
    );
  }
}

ButtonStyle buttonStyle() {
  return ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.black87), // Background color
foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
shape: MaterialStateProperty.all(
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8), // Button border radius
),
),

padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 16, vertical: 10)), // Button padding
);
}