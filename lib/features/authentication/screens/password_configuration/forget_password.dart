import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:si_store/features/authentication/screens/password_configuration/reset_password.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(STextString.forgetPassword,
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: SSizes.spaceBtwInputFields),
              Text(STextString.forgetPasswordSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: SSizes.spaceBetweenSections * 2),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: STextString.email)),
              SizedBox(height: SSizes.spaceBetweenSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => ResetPassword()),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4b68ff),
                          textStyle:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                      child: Text(STextString.submit))),
            ],
          ),
        ),
      ),
    );
  }
}
