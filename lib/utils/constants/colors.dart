import 'package:flutter/material.dart';

class SColors {
  SColors._();

  //App Basic Colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xffb0c7ff);

  //Gradient colors
  static const Gradient linearGradient = LinearGradient(
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xffffdfd5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  //Text Colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6c7570);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //Background Container Colors
  static const Color lightContainer = Color(0xfff6f6f6);
  static  Color darkContainers = SColors.white.withOpacity(0.1);

  //buttons colors
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c7570);
  static const Color buttonDisabled = Color(0xffe6e6e6);

  //Border colors
  static const Color borderPrimary = Color(0xffD9D9D9);
  static const Color borderSecondary = Color(0xffE6E6E6);

  //Error and Validation colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  //Neutral shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}
