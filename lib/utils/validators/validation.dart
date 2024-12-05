import 'package:flutter/cupertino.dart';

class SValidation {

  static String? validateEmptyText(String? fieldName ,String? value) {
    if(value == null || value.isEmpty){
      return '$fieldName required';
    }
  }



  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Email is required';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'password must contains at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number format (10 digits required).';
    }

    return null;
  }
}
