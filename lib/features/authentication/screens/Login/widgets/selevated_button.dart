import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_store/navigation_bar.dart';

class SElevatedButton extends StatelessWidget {
  const SElevatedButton({
    super.key,
    required this.Stext,
  });
  final String Stext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Get.to(() => SNavigationBar()),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff4b68ff),
          textStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(Stext),
      ),
    );
  }
}
