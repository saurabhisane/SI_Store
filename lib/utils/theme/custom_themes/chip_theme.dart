import 'package:flutter/material.dart';

class SChipTheme{
  SChipTheme._();

  static ChipThemeData lightSChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
    checkmarkColor: Colors.white,

  );
  static ChipThemeData darkSChipTheme = ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
    checkmarkColor: Colors.white,
  );
}