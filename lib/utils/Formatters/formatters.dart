import 'package:intl/intl.dart';
import 'package:libphonenumber/libphonenumber.dart';

class SFormatters{

  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US' ,symbol: '\$',).format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 10)
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    else if(phoneNumber.length == 11)
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';

    return phoneNumber;
  }

  // import 'package:libphonen/umber/libphonenumber.dart';

  Future<String> formatInternationalPhoneNumber(String phoneNumber, String isoCode) async {
    try {
      bool isValid = await PhoneNumberUtil.isValidPhoneNumber(phoneNumber: phoneNumber, isoCode: isoCode) ?? false;
      if (isValid) {
        String formattedNumber = await PhoneNumberUtil.formatAsYouType(phoneNumber: phoneNumber, isoCode: isoCode) ?? 'Error formatting phone number';
        return formattedNumber;
      } else {
        return 'Invalid phone number';
      }
    } catch (e) {
      print('Error formatting phone number: $e');
      return 'Error formatting phone number';
    }
  }









}