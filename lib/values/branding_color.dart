import 'package:flutter/material.dart';

const MaterialColor brandingColor = MaterialColor(
  _brandingPrimaryColor,
  <int, Color>{
    50: Color.fromRGBO(7, 94, 84, 0.1),
    100: Color.fromRGBO(7, 94, 84, 0.2),
    200: Color.fromRGBO(7, 94, 84, 0.3),
    300: Color.fromRGBO(7, 94, 84, 0.4),
    400: Color.fromRGBO(7, 94, 84, 0.5),
    500: Color(_brandingPrimaryColor),
    600: Color.fromRGBO(7, 94, 84, 0.6),
    700: Color.fromRGBO(7, 94, 84, 0.7),
    800: Color.fromRGBO(7, 94, 84, 0.8),
    900: Color.fromRGBO(7, 94, 84, 0.9), //Color(0xFFB71C1C),
  },
);
const int _brandingPrimaryColor = 0xFF075e54;
//(112,112,112)
