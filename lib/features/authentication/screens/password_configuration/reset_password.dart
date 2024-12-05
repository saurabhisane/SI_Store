import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_store/features/authentication/screens/Login/login_screen.dart';
import 'package:si_store/utils/constants/images_string.dart';
import 'package:si_store/utils/constants/text_string.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_formatter.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFormatter.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(Icons.clear))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  image: AssetImage(SImagesString.resetImage),
                  width: SHelperFormatter.screenwidth() * 0.6),
              SizedBox(height: SSizes.spaceBetweenSections * 2),
              Text(STextString.resetEmailTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: SSizes.spaceBtwInputFields),
              Text(STextString.resetEmailSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: SSizes.spaceBetweenSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4b68ff),
                          textStyle:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                      child: Text(STextString.done))),
              SizedBox(height: SSizes.spaceBetweenSections),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          // backgroundColor: Color(0xff4b68ff),
                          foregroundColor: dark ? SColors.white : Colors.grey,
                          textStyle:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                      child: Text(STextString.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
