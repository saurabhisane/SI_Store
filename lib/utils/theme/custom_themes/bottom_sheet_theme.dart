import 'package:flutter/material.dart';

class SBottomSheetTheme{
  SBottomSheetTheme._();

  static BottomSheetThemeData lightSBottomSheetTheme = BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkSBottomSheetTheme = BottomSheetThemeData(
    elevation: 0,
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(minHeight: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}