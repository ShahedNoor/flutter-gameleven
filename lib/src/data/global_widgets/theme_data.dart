import 'package:flutter/material.dart';

class CustomTheme {
  final MaterialColor myPrimaryColor;

  CustomTheme() : myPrimaryColor = MaterialColor(
      0xFFD81D4C,
      const <int, Color>{
        50: Color(0xFFFDF8F9),
        100: Color(0xFFFCF3F4),
        200: Color(0xFFF9E7E8),
        300: Color(0xFFF7DEDF),
        400: Color(0xFFF5D3D4),
        500: Color(0xFFD81D4C),
        600: Color(0xFFC21940),
        700: Color(0xFFAA1535),
        800: Color(0xFF93112A),
        900: Color(0xFF7C0D1F),
      }
  );

  ThemeData get themeData {
    return ThemeData(primarySwatch: myPrimaryColor);
  }
}
