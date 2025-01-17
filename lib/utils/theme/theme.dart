import 'package:flutter/material.dart';
import 'package:si_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:si_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:si_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:si_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:si_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:si_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:si_store/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:si_store/utils/theme/custom_themes/text_theme.dart';

class SAppTheme{
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: SAppbarTheme.lightSAppbarTheme,
    bottomSheetTheme: SBottomSheetTheme.lightSBottomSheetTheme,
    checkboxTheme: SCheckboxTheme.lightSCheckboxTheme,
    chipTheme: SChipTheme.lightSChipTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightSOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.lightSTextFormFieldTheme ,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: SAppbarTheme.darkSAppbarTheme,
    bottomSheetTheme: SBottomSheetTheme.darkSBottomSheetTheme,
    checkboxTheme: SCheckboxTheme.darkSCheckboxTheme,
    chipTheme: SChipTheme.darkSChipTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkSOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darkSTextFormFieldTheme ,
  );
}
