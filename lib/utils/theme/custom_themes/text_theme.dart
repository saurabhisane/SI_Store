import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class STextTheme {
  STextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headlineMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
    bodyLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5)),
    labelLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
    bodyLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),
    labelLarge: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: TextStyle().copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.5)),
  );
}
