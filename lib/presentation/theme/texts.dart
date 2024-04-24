import 'package:flutter/material.dart';

class TextsTheme {
  const TextsTheme();

  static TextsTheme of(BuildContext context) {
    return const TextsTheme();
  }

  TextStyle heading1(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      fontSize: 28,
    );
  }

  TextStyle heading2(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      letterSpacing: 0,
    );
  }

  TextStyle heading3(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 17,
      letterSpacing: 0,
    );
  }

  TextStyle heading3reg(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 17,
      letterSpacing: 0,
    );
  }

  TextStyle body1(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 15,
      letterSpacing: 0,
    );
  }

  TextStyle body2(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 15,
      letterSpacing: 0,
    );
  }

  TextStyle label1(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 12,
      letterSpacing: 0,
    );
  }

  TextStyle labelReg(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 0,
    );
  }

  TextStyle caption(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 8,
      letterSpacing: 0,
    );
  }
}
