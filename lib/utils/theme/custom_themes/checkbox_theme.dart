import 'package:flutter/material.dart';


class SCheckboxTheme{
  SCheckboxTheme._();


  static CheckboxThemeData lightSCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white; // Color when the checkbox is selected
      }
      return Colors.black; // Color when the checkbox is not selected
    }),
    fillColor:  WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return  Color(0xff1976d2); // Color when the checkbox is selected
      }
      return Colors.transparent; // Color when the checkbox is not selected
    }),
  );
  static CheckboxThemeData darkSCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white; // Color when the checkbox is selected
      }
      return Colors.black; // Color when the checkbox is not selected
    }),
    fillColor:  WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return  Color(0xff1976d2);// Color when the checkbox is selected
      }
      return Colors.transparent; // Color when the checkbox is not selected
    }),
  );
}