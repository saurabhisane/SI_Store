import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../signup/signup.dart';
import '../../../../../utils/constants/colors.dart';

class SOutlineButton extends StatelessWidget {
  const SOutlineButton({
    super.key,
    required this.Stext,
  });

  final String Stext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => Get.to(() => Signup()),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: SColors.darkGrey),
          // backgroundColor: Color(0xff4b68ff),
          textStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(Stext),
      ),
    );
  }
}
