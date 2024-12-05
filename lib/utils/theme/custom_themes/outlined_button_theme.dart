
import 'package:flutter/material.dart';

class SOutlinedButtonTheme{
  SOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightSOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.blue),
      textStyle: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

    ),
  );
  static OutlinedButtonThemeData darkSOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.blue),
      textStyle: TextStyle(fontSize: 16 , color: Colors.white , fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

    ),
  );
}