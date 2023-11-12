import 'package:flutter/material.dart';

const mActiveGreen = Color(0xFF50D1AB);
const mActiveBlue= Color(0xFF33CCCC);
const mActiveGray = Color(0xFF929292);
const mActiveWhite = Color(0xFFFFFFFF);



extension TurnMaterialColor on Color {
  // create a function return material color
  MaterialColor get materialColor {
    final int r = red.toInt();
    final int g = green.toInt();
    final int b = blue.toInt();
    return MaterialColor(value, <int, Color>{
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    });
  }
}
