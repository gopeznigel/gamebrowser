import 'package:flutter/material.dart';

class TextStyles {
  static const _fontFamily = 'Rubik';

  static TextStyle get header => const TextStyle(
        fontSize: 20,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        color: Color(0xFF000000),
      );

  static TextStyle get headerAlt => const TextStyle(
        fontSize: 18,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        color: Color(0xFF000000),
      );

  static TextStyle get title => const TextStyle(
        fontSize: 13,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        color: Color(0xFF000000),
      );

  static TextStyle get subTitle => const TextStyle(
        fontSize: 11,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000),
      );

  static TextStyle get tag => const TextStyle(
        fontSize: 9,
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        color: Color(0xFFFFFFFF),
      );
}
